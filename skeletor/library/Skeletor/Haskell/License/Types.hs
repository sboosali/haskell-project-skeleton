--------------------------------------------------
--------------------------------------------------

{-| 

-}

module Skeletor.Haskell.License.Types where

--------------------------------------------------
-- Imports (Project) -----------------------------
--------------------------------------------------

--import Skeletor.Haskell.

--------------------------------------------------
-- Imports (External) ----------------------------
--------------------------------------------------

-- import qualified "" _ as _
-- import           "" _ ()

--------------------------------------------------
-- Imports (Standard Library) --------------------
--------------------------------------------------

-- import qualified "" _ as _
-- import           "" _ ()

--------------------------------------------------
-- Imports (Custom Prelude) ----------------------
--------------------------------------------------

import Prelude_skeletor

--------------------------------------------------
-- Definitions -----------------------------------
--------------------------------------------------

{-|

See:

* [section 3.15 of SPDX Specification 2.1](https://spdx.org/spdx-specification-21-web-version#h.1hmsyys)
* [@Cabal:Distribution.SPDX@](DirectoryVariable http://hackage.haskell.org/package/Cabal-2.4.1.0/docs/Distribution-SPDX.html)


-}

data License' = License' String

--------------------------------------------------
--------------------------------------------------

type License = SpdxLicenseIdentifier

--------------------------------------------------

{-| @SPDX@

See:

* [@Cabal:Distribution.SPDX@](DirectoryVariable http://hackage.haskell.org/package/Cabal-2.4.1.0/docs/Distribution-SPDX.html)


-}

data SpdxLicenseIdentifier

  = NullBSD                              -- ^ @0BSD@, BSD Zero Clause License
  | AAL                                  -- ^ @AAL@, Attribution Assurance License
  | Abstyles                             -- ^ @Abstyles@, Abstyles License
  | Adobe_2006                           -- ^ @Adobe-2006@, Adobe Systems Incorporated Source Code License Agreement
  | Adobe_Glyph                          -- ^ @Adobe-Glyph@, Adobe Glyph List License
  | ADSL                                 -- ^ @ADSL@, Amazon Digital Services License
  | AFL_1_1                              -- ^ @AFL-1.1@, Academic Free License v1.1
  | AFL_1_2                              -- ^ @AFL-1.2@, Academic Free License v1.2
  | AFL_2_0                              -- ^ @AFL-2.0@, Academic Free License v2.0
  | AFL_2_1                              -- ^ @AFL-2.1@, Academic Free License v2.1
  | AFL_3_0                              -- ^ @AFL-3.0@, Academic Free License v3.0
  | Afmparse                             -- ^ @Afmparse@, Afmparse License
  | AGPL_1_0                             -- ^ @AGPL-1.0@, Affero General Public License v1.0, SPDX License List 3.0
  | AGPL_1_0_only                        -- ^ @AGPL-1.0-only@, Affero General Public License v1.0 only, SPDX License List 3.2
  | AGPL_1_0_or_later                    -- ^ @AGPL-1.0-or-later@, Affero General Public License v1.0 or later, SPDX License List 3.2
  | AGPL_3_0_only                        -- ^ @AGPL-3.0-only@, GNU Affero General Public License v3.0 only
  | AGPL_3_0_or_later                    -- ^ @AGPL-3.0-or-later@, GNU Affero General Public License v3.0 or later
  | Aladdin                              -- ^ @Aladdin@, Aladdin Free Public License
  | AMDPLPA                              -- ^ @AMDPLPA@, AMD's plpa_map.c License
  | AML                                  -- ^ @AML@, Apple MIT License
  | AMPAS                                -- ^ @AMPAS@, Academy of Motion Picture Arts and Sciences BSD
  | ANTLR_PD                             -- ^ @ANTLR-PD@, ANTLR Software Rights Notice
  | Apache_1_0                           -- ^ @Apache-1.0@, Apache License 1.0
  | Apache_1_1                           -- ^ @Apache-1.1@, Apache License 1.1
  | Apache_2_0                           -- ^ @Apache-2.0@, Apache License 2.0
  | APAFML                               -- ^ @APAFML@, Adobe Postscript AFM License
  | APL_1_0                              -- ^ @APL-1.0@, Adaptive Public License 1.0
  | APSL_1_0                             -- ^ @APSL-1.0@, Apple Public Source License 1.0
  | APSL_1_1                             -- ^ @APSL-1.1@, Apple Public Source License 1.1
  | APSL_1_2                             -- ^ @APSL-1.2@, Apple Public Source License 1.2
  | APSL_2_0                             -- ^ @APSL-2.0@, Apple Public Source License 2.0
  | Artistic_1_0_cl8                     -- ^ @Artistic-1.0-cl8@, Artistic License 1.0 w/clause 8
  | Artistic_1_0_Perl                    -- ^ @Artistic-1.0-Perl@, Artistic License 1.0 (Perl)
  | Artistic_1_0                         -- ^ @Artistic-1.0@, Artistic License 1.0
  | Artistic_2_0                         -- ^ @Artistic-2.0@, Artistic License 2.0
  | Bahyph                               -- ^ @Bahyph@, Bahyph License
  | Barr                                 -- ^ @Barr@, Barr License
  | Beerware                             -- ^ @Beerware@, Beerware License
  | BitTorrent_1_0                       -- ^ @BitTorrent-1.0@, BitTorrent Open Source License v1.0
  | BitTorrent_1_1                       -- ^ @BitTorrent-1.1@, BitTorrent Open Source License v1.1
  | Borceux                              -- ^ @Borceux@, Borceux license
  | BSD_1_Clause                         -- ^ @BSD-1-Clause@, BSD 1-Clause License
  | BSD_2_Clause_FreeBSD                 -- ^ @BSD-2-Clause-FreeBSD@, BSD 2-Clause FreeBSD License
  | BSD_2_Clause_NetBSD                  -- ^ @BSD-2-Clause-NetBSD@, BSD 2-Clause NetBSD License
  | BSD_2_Clause_Patent                  -- ^ @BSD-2-Clause-Patent@, BSD-2-Clause Plus Patent License
  | BSD_2_Clause                         -- ^ @BSD-2-Clause@, BSD 2-Clause "Simplified" License
  | BSD_3_Clause_Attribution             -- ^ @BSD-3-Clause-Attribution@, BSD with attribution
  | BSD_3_Clause_Clear                   -- ^ @BSD-3-Clause-Clear@, BSD 3-Clause Clear License
  | BSD_3_Clause_LBNL                    -- ^ @BSD-3-Clause-LBNL@, Lawrence Berkeley National Labs BSD variant license
  | BSD_3_Clause_No_Nuclear_License_2014 -- ^ @BSD-3-Clause-No-Nuclear-License-2014@, BSD 3-Clause No Nuclear License 2014
  | BSD_3_Clause_No_Nuclear_License      -- ^ @BSD-3-Clause-No-Nuclear-License@, BSD 3-Clause No Nuclear License
  | BSD_3_Clause_No_Nuclear_Warranty     -- ^ @BSD-3-Clause-No-Nuclear-Warranty@, BSD 3-Clause No Nuclear Warranty
  | BSD_3_Clause                         -- ^ @BSD-3-Clause@, BSD 3-Clause "New" or "Revised" License
  | BSD_4_Clause_UC                      -- ^ @BSD-4-Clause-UC@, BSD-4-Clause (University of California-Specific)
  | BSD_4_Clause                         -- ^ @BSD-4-Clause@, BSD 4-Clause "Original" or "Old" License
  | BSD_Protection                       -- ^ @BSD-Protection@, BSD Protection License
  | BSD_Source_Code                      -- ^ @BSD-Source-Code@, BSD Source Code Attribution
  | BSL_1_0                              -- ^ @BSL-1.0@, Boost Software License 1.0
  | Bzip2_1_0_5                          -- ^ @bzip2-1.0.5@, bzip2 and libbzip2 License v1.0.5
  | Bzip2_1_0_6                          -- ^ @bzip2-1.0.6@, bzip2 and libbzip2 License v1.0.6
  | Caldera                              -- ^ @Caldera@, Caldera License
  | CATOSL_1_1                           -- ^ @CATOSL-1.1@, Computer Associates Trusted Open Source License 1.1
  | CC_BY_1_0                            -- ^ @CC-BY-1.0@, Creative Commons Attribution 1.0 Generic
  | CC_BY_2_0                            -- ^ @CC-BY-2.0@, Creative Commons Attribution 2.0 Generic
  | CC_BY_2_5                            -- ^ @CC-BY-2.5@, Creative Commons Attribution 2.5 Generic
  | CC_BY_3_0                            -- ^ @CC-BY-3.0@, Creative Commons Attribution 3.0 Unported
  | CC_BY_4_0                            -- ^ @CC-BY-4.0@, Creative Commons Attribution 4.0 International
  | CC_BY_NC_1_0                         -- ^ @CC-BY-NC-1.0@, Creative Commons Attribution Non Commercial 1.0 Generic
  | CC_BY_NC_2_0                         -- ^ @CC-BY-NC-2.0@, Creative Commons Attribution Non Commercial 2.0 Generic
  | CC_BY_NC_2_5                         -- ^ @CC-BY-NC-2.5@, Creative Commons Attribution Non Commercial 2.5 Generic
  | CC_BY_NC_3_0                         -- ^ @CC-BY-NC-3.0@, Creative Commons Attribution Non Commercial 3.0 Unported
  | CC_BY_NC_4_0                         -- ^ @CC-BY-NC-4.0@, Creative Commons Attribution Non Commercial 4.0 International
  | CC_BY_NC_ND_1_0                      -- ^ @CC-BY-NC-ND-1.0@, Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic
  | CC_BY_NC_ND_2_0                      -- ^ @CC-BY-NC-ND-2.0@, Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic
  | CC_BY_NC_ND_2_5                      -- ^ @CC-BY-NC-ND-2.5@, Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic
  | CC_BY_NC_ND_3_0                      -- ^ @CC-BY-NC-ND-3.0@, Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported
  | CC_BY_NC_ND_4_0                      -- ^ @CC-BY-NC-ND-4.0@, Creative Commons Attribution Non Commercial No Derivatives 4.0 International
  | CC_BY_NC_SA_1_0                      -- ^ @CC-BY-NC-SA-1.0@, Creative Commons Attribution Non Commercial Share Alike 1.0 Generic
  | CC_BY_NC_SA_2_0                      -- ^ @CC-BY-NC-SA-2.0@, Creative Commons Attribution Non Commercial Share Alike 2.0 Generic
  | CC_BY_NC_SA_2_5                      -- ^ @CC-BY-NC-SA-2.5@, Creative Commons Attribution Non Commercial Share Alike 2.5 Generic
  | CC_BY_NC_SA_3_0                      -- ^ @CC-BY-NC-SA-3.0@, Creative Commons Attribution Non Commercial Share Alike 3.0 Unported
  | CC_BY_NC_SA_4_0                      -- ^ @CC-BY-NC-SA-4.0@, Creative Commons Attribution Non Commercial Share Alike 4.0 International
  | CC_BY_ND_1_0                         -- ^ @CC-BY-ND-1.0@, Creative Commons Attribution No Derivatives 1.0 Generic
  | CC_BY_ND_2_0                         -- ^ @CC-BY-ND-2.0@, Creative Commons Attribution No Derivatives 2.0 Generic
  | CC_BY_ND_2_5                         -- ^ @CC-BY-ND-2.5@, Creative Commons Attribution No Derivatives 2.5 Generic
  | CC_BY_ND_3_0                         -- ^ @CC-BY-ND-3.0@, Creative Commons Attribution No Derivatives 3.0 Unported
  | CC_BY_ND_4_0                         -- ^ @CC-BY-ND-4.0@, Creative Commons Attribution No Derivatives 4.0 International
  | CC_BY_SA_1_0                         -- ^ @CC-BY-SA-1.0@, Creative Commons Attribution Share Alike 1.0 Generic
  | CC_BY_SA_2_0                         -- ^ @CC-BY-SA-2.0@, Creative Commons Attribution Share Alike 2.0 Generic
  | CC_BY_SA_2_5                         -- ^ @CC-BY-SA-2.5@, Creative Commons Attribution Share Alike 2.5 Generic
  | CC_BY_SA_3_0                         -- ^ @CC-BY-SA-3.0@, Creative Commons Attribution Share Alike 3.0 Unported
  | CC_BY_SA_4_0                         -- ^ @CC-BY-SA-4.0@, Creative Commons Attribution Share Alike 4.0 International
  | CC0_1_0                              -- ^ @CC0-1.0@, Creative Commons Zero v1.0 Universal
  | CDDL_1_0                             -- ^ @CDDL-1.0@, Common Development and Distribution License 1.0
  | CDDL_1_1                             -- ^ @CDDL-1.1@, Common Development and Distribution License 1.1
  | CDLA_Permissive_1_0                  -- ^ @CDLA-Permissive-1.0@, Community Data License Agreement Permissive 1.0
  | CDLA_Sharing_1_0                     -- ^ @CDLA-Sharing-1.0@, Community Data License Agreement Sharing 1.0
  | CECILL_1_0                           -- ^ @CECILL-1.0@, CeCILL Free Software License Agreement v1.0
  | CECILL_1_1                           -- ^ @CECILL-1.1@, CeCILL Free Software License Agreement v1.1
  | CECILL_2_0                           -- ^ @CECILL-2.0@, CeCILL Free Software License Agreement v2.0
  | CECILL_2_1                           -- ^ @CECILL-2.1@, CeCILL Free Software License Agreement v2.1
  | CECILL_B                             -- ^ @CECILL-B@, CeCILL-B Free Software License Agreement
  | CECILL_C                             -- ^ @CECILL-C@, CeCILL-C Free Software License Agreement
  | ClArtistic                           -- ^ @ClArtistic@, Clarified Artistic License
  | CNRI_Jython                          -- ^ @CNRI-Jython@, CNRI Jython License
  | CNRI_Python_GPL_Compatible           -- ^ @CNRI-Python-GPL-Compatible@, CNRI Python Open Source GPL Compatible License Agreement
  | CNRI_Python                          -- ^ @CNRI-Python@, CNRI Python License
  | Condor_1_1                           -- ^ @Condor-1.1@, Condor Public License v1.1
  | CPAL_1_0                             -- ^ @CPAL-1.0@, Common Public Attribution License 1.0
  | CPL_1_0                              -- ^ @CPL-1.0@, Common Public License 1.0
  | CPOL_1_02                            -- ^ @CPOL-1.02@, Code Project Open License 1.02
  | Crossword                            -- ^ @Crossword@, Crossword License
  | CrystalStacker                       -- ^ @CrystalStacker@, CrystalStacker License
  | CUA_OPL_1_0                          -- ^ @CUA-OPL-1.0@, CUA Office Public License v1.0
  | Cube                                 -- ^ @Cube@, Cube License
  | Curl                                 -- ^ @curl@, curl License
  | D_FSL_1_0                            -- ^ @D-FSL-1.0@, Deutsche Freie Software Lizenz
  | Diffmark                             -- ^ @diffmark@, diffmark license
  | DOC                                  -- ^ @DOC@, DOC License
  | Dotseqn                              -- ^ @Dotseqn@, Dotseqn License
  | DSDP                                 -- ^ @DSDP@, DSDP License
  | Dvipdfm                              -- ^ @dvipdfm@, dvipdfm License
  | ECL_1_0                              -- ^ @ECL-1.0@, Educational Community License v1.0
  | ECL_2_0                              -- ^ @ECL-2.0@, Educational Community License v2.0
  | EFL_1_0                              -- ^ @EFL-1.0@, Eiffel Forum License v1.0
  | EFL_2_0                              -- ^ @EFL-2.0@, Eiffel Forum License v2.0
  | EGenix                               -- ^ @eGenix@, eGenix.com Public License 1.1.0
  | Entessa                              -- ^ @Entessa@, Entessa Public License v1.0
  | EPL_1_0                              -- ^ @EPL-1.0@, Eclipse Public License 1.0
  | EPL_2_0                              -- ^ @EPL-2.0@, Eclipse Public License 2.0
  | ErlPL_1_1                            -- ^ @ErlPL-1.1@, Erlang Public License v1.1
  | EUDatagrid                           -- ^ @EUDatagrid@, EU DataGrid Software License
  | EUPL_1_0                             -- ^ @EUPL-1.0@, European Union Public License 1.0
  | EUPL_1_1                             -- ^ @EUPL-1.1@, European Union Public License 1.1
  | EUPL_1_2                             -- ^ @EUPL-1.2@, European Union Public License 1.2
  | Eurosym                              -- ^ @Eurosym@, Eurosym License
  | Fair                                 -- ^ @Fair@, Fair License
  | Frameworx_1_0                        -- ^ @Frameworx-1.0@, Frameworx Open License 1.0
  | FreeImage                            -- ^ @FreeImage@, FreeImage Public License v1.0
  | FSFAP                                -- ^ @FSFAP@, FSF All Permissive License
  | FSFUL                                -- ^ @FSFUL@, FSF Unlimited License
  | FSFULLR                              -- ^ @FSFULLR@, FSF Unlimited License (with License Retention)
  | FTL                                  -- ^ @FTL@, Freetype Project License
  | GFDL_1_1_only                        -- ^ @GFDL-1.1-only@, GNU Free Documentation License v1.1 only
  | GFDL_1_1_or_later                    -- ^ @GFDL-1.1-or-later@, GNU Free Documentation License v1.1 or later
  | GFDL_1_2_only                        -- ^ @GFDL-1.2-only@, GNU Free Documentation License v1.2 only
  | GFDL_1_2_or_later                    -- ^ @GFDL-1.2-or-later@, GNU Free Documentation License v1.2 or later
  | GFDL_1_3_only                        -- ^ @GFDL-1.3-only@, GNU Free Documentation License v1.3 only
  | GFDL_1_3_or_later                    -- ^ @GFDL-1.3-or-later@, GNU Free Documentation License v1.3 or later
  | Giftware                             -- ^ @Giftware@, Giftware License
  | GL2PS                                -- ^ @GL2PS@, GL2PS License
  | Glide                                -- ^ @Glide@, 3dfx Glide License
  | Glulxe                               -- ^ @Glulxe@, Glulxe License
  | Gnuplot                              -- ^ @gnuplot@, gnuplot License
  | GPL_1_0_only                         -- ^ @GPL-1.0-only@, GNU General Public License v1.0 only
  | GPL_1_0_or_later                     -- ^ @GPL-1.0-or-later@, GNU General Public License v1.0 or later
  | GPL_2_0_only                         -- ^ @GPL-2.0-only@, GNU General Public License v2.0 only
  | GPL_2_0_or_later                     -- ^ @GPL-2.0-or-later@, GNU General Public License v2.0 or later
  | GPL_3_0_only                         -- ^ @GPL-3.0-only@, GNU General Public License v3.0 only
  | GPL_3_0_or_later                     -- ^ @GPL-3.0-or-later@, GNU General Public License v3.0 or later
  | GSOAP_1_3b                           -- ^ @gSOAP-1.3b@, gSOAP Public License v1.3b
  | HaskellReport                        -- ^ @HaskellReport@, Haskell Language Report License
  | HPND                                 -- ^ @HPND@, Historical Permission Notice and Disclaimer
  | IBM_pibs                             -- ^ @IBM-pibs@, IBM PowerPC Initialization and Boot Software
  | ICU                                  -- ^ @ICU@, ICU License
  | IJG                                  -- ^ @IJG@, Independent JPEG Group License
  | ImageMagick                          -- ^ @ImageMagick@, ImageMagick License
  | IMatix                               -- ^ @iMatix@, iMatix Standard Function Library Agreement
  | Imlib2                               -- ^ @Imlib2@, Imlib2 License
  | Info_ZIP                             -- ^ @Info-ZIP@, Info-ZIP License
  | Intel_ACPI                           -- ^ @Intel-ACPI@, Intel ACPI Software License Agreement
  | Intel                                -- ^ @Intel@, Intel Open Source License
  | Interbase_1_0                        -- ^ @Interbase-1.0@, Interbase Public License v1.0
  | IPA                                  -- ^ @IPA@, IPA Font License
  | IPL_1_0                              -- ^ @IPL-1.0@, IBM Public License v1.0
  | ISC                                  -- ^ @ISC@, ISC License
  | JasPer_2_0                           -- ^ @JasPer-2.0@, JasPer License
  | JSON                                 -- ^ @JSON@, JSON License
  | LAL_1_2                              -- ^ @LAL-1.2@, Licence Art Libre 1.2
  | LAL_1_3                              -- ^ @LAL-1.3@, Licence Art Libre 1.3
  | Latex2e                              -- ^ @Latex2e@, Latex2e License
  | Leptonica                            -- ^ @Leptonica@, Leptonica License
  | LGPL_2_0_only                        -- ^ @LGPL-2.0-only@, GNU Library General Public License v2 only
  | LGPL_2_0_or_later                    -- ^ @LGPL-2.0-or-later@, GNU Library General Public License v2 or later
  | LGPL_2_1_only                        -- ^ @LGPL-2.1-only@, GNU Lesser General Public License v2.1 only
  | LGPL_2_1_or_later                    -- ^ @LGPL-2.1-or-later@, GNU Lesser General Public License v2.1 or later
  | LGPL_3_0_only                        -- ^ @LGPL-3.0-only@, GNU Lesser General Public License v3.0 only
  | LGPL_3_0_or_later                    -- ^ @LGPL-3.0-or-later@, GNU Lesser General Public License v3.0 or later
  | LGPLLR                               -- ^ @LGPLLR@, Lesser General Public License For Linguistic Resources
  | Libpng                               -- ^ @Libpng@, libpng License
  | Libtiff                              -- ^ @libtiff@, libtiff License
  | LiLiQ_P_1_1                          -- ^ @LiLiQ-P-1.1@, Licence Libre du Québec – Permissive version 1.1
  | LiLiQ_R_1_1                          -- ^ @LiLiQ-R-1.1@, Licence Libre du Québec – Réciprocité version 1.1
  | LiLiQ_Rplus_1_1                      -- ^ @LiLiQ-Rplus-1.1@, Licence Libre du Québec – Réciprocité forte version 1.1
  | Linux_OpenIB                         -- ^ @Linux-OpenIB@, Linux Kernel Variant of OpenIB.org license, SPDX License List 3.2
  | LPL_1_0                              -- ^ @LPL-1.0@, Lucent Public License Version 1.0
  | LPL_1_02                             -- ^ @LPL-1.02@, Lucent Public License v1.02
  | LPPL_1_0                             -- ^ @LPPL-1.0@, LaTeX Project Public License v1.0
  | LPPL_1_1                             -- ^ @LPPL-1.1@, LaTeX Project Public License v1.1
  | LPPL_1_2                             -- ^ @LPPL-1.2@, LaTeX Project Public License v1.2
  | LPPL_1_3a                            -- ^ @LPPL-1.3a@, LaTeX Project Public License v1.3a
  | LPPL_1_3c                            -- ^ @LPPL-1.3c@, LaTeX Project Public License v1.3c
  | MakeIndex                            -- ^ @MakeIndex@, MakeIndex License
  | MirOS                                -- ^ @MirOS@, MirOS License
  | MIT_0                                -- ^ @MIT-0@, MIT No Attribution, SPDX License List 3.2
  | MIT_advertising                      -- ^ @MIT-advertising@, Enlightenment License (e16)
  | MIT_CMU                              -- ^ @MIT-CMU@, CMU License
  | MIT_enna                             -- ^ @MIT-enna@, enna License
  | MIT_feh                              -- ^ @MIT-feh@, feh License
  | MIT                                  -- ^ @MIT@, MIT License
  | MITNFA                               -- ^ @MITNFA@, MIT +no-false-attribs license
  | Motosoto                             -- ^ @Motosoto@, Motosoto License
  | Mpich2                               -- ^ @mpich2@, mpich2 License
  | MPL_1_0                              -- ^ @MPL-1.0@, Mozilla Public License 1.0
  | MPL_1_1                              -- ^ @MPL-1.1@, Mozilla Public License 1.1
  | MPL_2_0_no_copyleft_exception        -- ^ @MPL-2.0-no-copyleft-exception@, Mozilla Public License 2.0 (no copyleft exception)
  | MPL_2_0                              -- ^ @MPL-2.0@, Mozilla Public License 2.0
  | MS_PL                                -- ^ @MS-PL@, Microsoft Public License
  | MS_RL                                -- ^ @MS-RL@, Microsoft Reciprocal License
  | MTLL                                 -- ^ @MTLL@, Matrix Template Library License
  | Multics                              -- ^ @Multics@, Multics License
  | Mup                                  -- ^ @Mup@, Mup License
  | NASA_1_3                             -- ^ @NASA-1.3@, NASA Open Source Agreement 1.3
  | Naumen                               -- ^ @Naumen@, Naumen Public License
  | NBPL_1_0                             -- ^ @NBPL-1.0@, Net Boolean Public License v1
  | NCSA                                 -- ^ @NCSA@, University of Illinois/NCSA Open Source License
  | Net_SNMP                             -- ^ @Net-SNMP@, Net-SNMP License
  | NetCDF                               -- ^ @NetCDF@, NetCDF license
  | Newsletr                             -- ^ @Newsletr@, Newsletr License
  | NGPL                                 -- ^ @NGPL@, Nethack General Public License
  | NLOD_1_0                             -- ^ @NLOD-1.0@, Norwegian Licence for Open Government Data
  | NLPL                                 -- ^ @NLPL@, No Limit Public License
  | Nokia                                -- ^ @Nokia@, Nokia Open Source License
  | NOSL                                 -- ^ @NOSL@, Netizen Open Source License
  | Noweb                                -- ^ @Noweb@, Noweb License
  | NPL_1_0                              -- ^ @NPL-1.0@, Netscape Public License v1.0
  | NPL_1_1                              -- ^ @NPL-1.1@, Netscape Public License v1.1
  | NPOSL_3_0                            -- ^ @NPOSL-3.0@, Non-Profit Open Software License 3.0
  | NRL                                  -- ^ @NRL@, NRL License
  | NTP                                  -- ^ @NTP@, NTP License
  | OCCT_PL                              -- ^ @OCCT-PL@, Open CASCADE Technology Public License
  | OCLC_2_0                             -- ^ @OCLC-2.0@, OCLC Research Public License 2.0
  | ODbL_1_0                             -- ^ @ODbL-1.0@, ODC Open Database License v1.0
  | ODC_By_1_0                           -- ^ @ODC-By-1.0@, Open Data Commons Attribution License v1.0, SPDX License List 3.2
  | OFL_1_0                              -- ^ @OFL-1.0@, SIL Open Font License 1.0
  | OFL_1_1                              -- ^ @OFL-1.1@, SIL Open Font License 1.1
  | OGTSL                                -- ^ @OGTSL@, Open Group Test Suite License
  | OLDAP_1_1                            -- ^ @OLDAP-1.1@, Open LDAP Public License v1.1
  | OLDAP_1_2                            -- ^ @OLDAP-1.2@, Open LDAP Public License v1.2
  | OLDAP_1_3                            -- ^ @OLDAP-1.3@, Open LDAP Public License v1.3
  | OLDAP_1_4                            -- ^ @OLDAP-1.4@, Open LDAP Public License v1.4
  | OLDAP_2_0_1                          -- ^ @OLDAP-2.0.1@, Open LDAP Public License v2.0.1
  | OLDAP_2_0                            -- ^ @OLDAP-2.0@, Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)
  | OLDAP_2_1                            -- ^ @OLDAP-2.1@, Open LDAP Public License v2.1
  | OLDAP_2_2_1                          -- ^ @OLDAP-2.2.1@, Open LDAP Public License v2.2.1
  | OLDAP_2_2_2                          -- ^ @OLDAP-2.2.2@, Open LDAP Public License 2.2.2
  | OLDAP_2_2                            -- ^ @OLDAP-2.2@, Open LDAP Public License v2.2
  | OLDAP_2_3                            -- ^ @OLDAP-2.3@, Open LDAP Public License v2.3
  | OLDAP_2_4                            -- ^ @OLDAP-2.4@, Open LDAP Public License v2.4
  | OLDAP_2_5                            -- ^ @OLDAP-2.5@, Open LDAP Public License v2.5
  | OLDAP_2_6                            -- ^ @OLDAP-2.6@, Open LDAP Public License v2.6
  | OLDAP_2_7                            -- ^ @OLDAP-2.7@, Open LDAP Public License v2.7
  | OLDAP_2_8                            -- ^ @OLDAP-2.8@, Open LDAP Public License v2.8
  | OML                                  -- ^ @OML@, Open Market License
  | OpenSSL                              -- ^ @OpenSSL@, OpenSSL License
  | OPL_1_0                              -- ^ @OPL-1.0@, Open Public License v1.0
  | OSET_PL_2_1                          -- ^ @OSET-PL-2.1@, OSET Public License version 2.1
  | OSL_1_0                              -- ^ @OSL-1.0@, Open Software License 1.0
  | OSL_1_1                              -- ^ @OSL-1.1@, Open Software License 1.1
  | OSL_2_0                              -- ^ @OSL-2.0@, Open Software License 2.0
  | OSL_2_1                              -- ^ @OSL-2.1@, Open Software License 2.1
  | OSL_3_0                              -- ^ @OSL-3.0@, Open Software License 3.0
  | PDDL_1_0                             -- ^ @PDDL-1.0@, ODC Public Domain Dedication & License 1.0
  | PHP_3_0                              -- ^ @PHP-3.0@, PHP License v3.0
  | PHP_3_01                             -- ^ @PHP-3.01@, PHP License v3.01
  | Plexus                               -- ^ @Plexus@, Plexus Classworlds License
  | PostgreSQL                           -- ^ @PostgreSQL@, PostgreSQL License
  | Psfrag                               -- ^ @psfrag@, psfrag License
  | Psutils                              -- ^ @psutils@, psutils License
  | Python_2_0                           -- ^ @Python-2.0@, Python License 2.0
  | Qhull                                -- ^ @Qhull@, Qhull License
  | QPL_1_0                              -- ^ @QPL-1.0@, Q Public License 1.0
  | Rdisc                                -- ^ @Rdisc@, Rdisc License
  | RHeCos_1_1                           -- ^ @RHeCos-1.1@, Red Hat eCos Public License v1.1
  | RPL_1_1                              -- ^ @RPL-1.1@, Reciprocal Public License 1.1
  | RPL_1_5                              -- ^ @RPL-1.5@, Reciprocal Public License 1.5
  | RPSL_1_0                             -- ^ @RPSL-1.0@, RealNetworks Public Source License v1.0
  | RSA_MD                               -- ^ @RSA-MD@, RSA Message-Digest License 
  | RSCPL                                -- ^ @RSCPL@, Ricoh Source Code Public License
  | Ruby                                 -- ^ @Ruby@, Ruby License
  | SAX_PD                               -- ^ @SAX-PD@, Sax Public Domain Notice
  | Saxpath                              -- ^ @Saxpath@, Saxpath License
  | SCEA                                 -- ^ @SCEA@, SCEA Shared Source License
  | Sendmail                             -- ^ @Sendmail@, Sendmail License
  | SGI_B_1_0                            -- ^ @SGI-B-1.0@, SGI Free Software License B v1.0
  | SGI_B_1_1                            -- ^ @SGI-B-1.1@, SGI Free Software License B v1.1
  | SGI_B_2_0                            -- ^ @SGI-B-2.0@, SGI Free Software License B v2.0
  | SimPL_2_0                            -- ^ @SimPL-2.0@, Simple Public License 2.0
  | SISSL_1_2                            -- ^ @SISSL-1.2@, Sun Industry Standards Source License v1.2
  | SISSL                                -- ^ @SISSL@, Sun Industry Standards Source License v1.1
  | Sleepycat                            -- ^ @Sleepycat@, Sleepycat License
  | SMLNJ                                -- ^ @SMLNJ@, Standard ML of New Jersey License
  | SMPPL                                -- ^ @SMPPL@, Secure Messaging Protocol Public License
  | SNIA                                 -- ^ @SNIA@, SNIA Public License 1.1
  | Spencer_86                           -- ^ @Spencer-86@, Spencer License 86
  | Spencer_94                           -- ^ @Spencer-94@, Spencer License 94
  | Spencer_99                           -- ^ @Spencer-99@, Spencer License 99
  | SPL_1_0                              -- ^ @SPL-1.0@, Sun Public License v1.0
  | SugarCRM_1_1_3                       -- ^ @SugarCRM-1.1.3@, SugarCRM Public License v1.1.3
  | SWL                                  -- ^ @SWL@, Scheme Widget Library (SWL) Software License Agreement
  | TCL                                  -- ^ @TCL@, TCL/TK License
  | TCP_wrappers                         -- ^ @TCP-wrappers@, TCP Wrappers License
  | TMate                                -- ^ @TMate@, TMate Open Source License
  | TORQUE_1_1                           -- ^ @TORQUE-1.1@, TORQUE v2.5+ Software License v1.1
  | TOSL                                 -- ^ @TOSL@, Trusster Open Source License
  | TU_Berlin_1_0                        -- ^ @TU-Berlin-1.0@, Technische Universitaet Berlin License 1.0, SPDX License List 3.2
  | TU_Berlin_2_0                        -- ^ @TU-Berlin-2.0@, Technische Universitaet Berlin License 2.0, SPDX License List 3.2
  | Unicode_DFS_2015                     -- ^ @Unicode-DFS-2015@, Unicode License Agreement - Data Files and Software (2015)
  | Unicode_DFS_2016                     -- ^ @Unicode-DFS-2016@, Unicode License Agreement - Data Files and Software (2016)
  | Unicode_TOU                          -- ^ @Unicode-TOU@, Unicode Terms of Use
  | Unlicense                            -- ^ @Unlicense@, The Unlicense
  | UPL_1_0                              -- ^ @UPL-1.0@, Universal Permissive License v1.0
  | Vim                                  -- ^ @Vim@, Vim License
  | VOSTROM                              -- ^ @VOSTROM@, VOSTROM Public License for Open Source
  | VSL_1_0                              -- ^ @VSL-1.0@, Vovida Software License v1.0
  | W3C_19980720                         -- ^ @W3C-19980720@, W3C Software Notice and License (1998-07-20)
  | W3C_20150513                         -- ^ @W3C-20150513@, W3C Software Notice and Document License (2015-05-13)
  | W3C                                  -- ^ @W3C@, W3C Software Notice and License (2002-12-31)
  | Watcom_1_0                           -- ^ @Watcom-1.0@, Sybase Open Watcom Public License 1.0
  | Wsuipa                               -- ^ @Wsuipa@, Wsuipa License
  | WTFPL                                -- ^ @WTFPL@, Do What The F*ck You Want To Public License
  | X11                                  -- ^ @X11@, X11 License
  | Xerox                                -- ^ @Xerox@, Xerox License
  | XFree86_1_1                          -- ^ @XFree86-1.1@, XFree86 License 1.1
  | Xinetd                               -- ^ @xinetd@, xinetd License
  | Xnet                                 -- ^ @Xnet@, X.Net License
  | Xpp                                  -- ^ @xpp@, XPP License
  | XSkat                                -- ^ @XSkat@, XSkat License
  | YPL_1_0                              -- ^ @YPL-1.0@, Yahoo! Public License v1.0
  | YPL_1_1                              -- ^ @YPL-1.1@, Yahoo! Public License v1.1
  | Zed                                  -- ^ @Zed@, Zed License
  | Zend_2_0                             -- ^ @Zend-2.0@, Zend License v2.0
  | Zimbra_1_3                           -- ^ @Zimbra-1.3@, Zimbra Public License v1.3
  | Zimbra_1_4                           -- ^ @Zimbra-1.4@, Zimbra Public License v1.4
  | Zlib_acknowledgement                 -- ^ @zlib-acknowledgement@, zlib/libpng License with Acknowledgement
  | Zlib                                 -- ^ @Zlib@, zlib License
  | ZPL_1_1                              -- ^ @ZPL-1.1@, Zope Public License 1.1
  | ZPL_2_0                              -- ^ @ZPL-2.0@, Zope Public License 2.0
  | ZPL_2_1                              -- ^ @ZPL-2.1@, Zope Public License 2.1

  deriving stock    (Enum,Bounded,Ix)
  deriving anyclass (GEnum)
  deriving stock    (Show,Read,Eq,Ord,Lift,Generic)
  deriving anyclass (NFData,Hashable)

--------------------------------------------------
--------------------------------------------------

-- | A user-defined license reference (for a license not on the SPDX License List);

data LicenseReference = LicenseReference

  { document   :: !(Maybe String)
  , identifier :: !String
  }

--------------------------------------------------
--------------------------------------------------
