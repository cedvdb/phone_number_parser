import '../parsers/_validator.dart';
import 'generated/country_code_to_iso_code.dart';
import 'generated/metadata_by_iso_code.dart';
import 'generated/metadata_formats_by_iso_code.dart';
import 'generated/metadata_lengths_by_iso_code.dart';
import 'generated/metadata_patterns_by_iso_code.dart';
import 'models/phone_metadata.dart';
import 'models/phone_metadata_formats.dart';
import 'models/phone_metadata_lengths.dart';
import 'models/phone_metadata_patterns.dart';
import '../models/iso_code.dart';
import '../models/phone_number_exceptions.dart';

/// Helper to find metadata
abstract class MetadataFinder {
  /// expects a normalized iso code
  static PhoneMetadata findMetadataForIsoCode(IsoCode isoCode) {
    final metadata = metadataByIsoCode[isoCode];
    if (metadata == null) {
      throw PhoneNumberException(
        code: Code.invalidIsoCode,
        description: '$isoCode not found',
      );
    }
    return metadata;
  }

  /// expects a normalized iso code
  static PhoneMetadataPatterns findMetadataPatternsForIsoCode(IsoCode isoCode) {
    final metadata = metadataPatternsByIsoCode[isoCode];
    if (metadata == null) {
      throw PhoneNumberException(
        code: Code.invalidIsoCode,
        description: '$isoCode not found',
      );
    }
    return metadata;
  }

  static PhoneMetadataLengths findMetadataLengthForIsoCode(IsoCode isoCode) {
    final metadata = metadataLenghtsByIsoCode[isoCode];
    if (metadata == null) {
      throw PhoneNumberException(
        code: Code.invalidIsoCode,
        description: 'isoCode "$isoCode" not found',
      );
    }
    return metadata;
  }

  static PhoneMetadataFormats findMetadataFormatsForIsoCode(IsoCode isoCode) {
    final metadata = metadataFormatsByIsoCode[isoCode];
    if (metadata == null) {
      throw PhoneNumberException(
        code: Code.invalidIsoCode,
        description: 'isoCode "$isoCode" not found',
      );
    }
    return metadata;
  }

  /// expects normalized countryCode
  static PhoneMetadata? findMetadataForCountryCode(
    String countryCode,
    String nationalNumber,
  ) {
    final isoList = _getIsoCodesFromCountryCode(countryCode);
    // country code can have multiple metadata because multiple iso code
    // share the same country code.
    final allMatchingMetadata =
        isoList.map((iso) => findMetadataForIsoCode(iso)).toList();

    if (allMatchingMetadata.isEmpty) {
      return null;
    }
    final match = _getMatchUsingPatterns(nationalNumber, allMatchingMetadata);
    return match;
  }

  static List<IsoCode> _getIsoCodesFromCountryCode(String countryCode) {
    final isoCodes = countryCodeToIsoCode[countryCode];
    if (isoCodes == null) {
      return [];
    }
    return isoCodes;
  }

  static PhoneMetadata _getMatchUsingPatterns(
    String nationalNumber,
    List<PhoneMetadata> potentialFits,
  ) {
    if (potentialFits.length == 1) return potentialFits[0];
    // if the phone number is valid for a metadata return that metadata
    for (var fit in potentialFits) {
      final isValidForIso =
          Validator.validateWithPattern(fit.isoCode, nationalNumber);
      if (isValidForIso) {
        return fit;
      }
    }
    // otherwise the phone number starts with leading digits of metadata
    for (var fit in potentialFits) {
      final leadingDigits = fit.leadingDigits;
      if (leadingDigits != null && nationalNumber.startsWith(leadingDigits)) {
        return fit;
      }
    }

    // best guess here
    return potentialFits[0];
  }
}
