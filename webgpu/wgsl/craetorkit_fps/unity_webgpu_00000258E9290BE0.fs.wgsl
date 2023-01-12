struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat7 : f32;
  var x_229 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_553 : f32;
  var x_565 : f32;
  var x_577 : f32;
  var x_646 : f32;
  var x_659 : f32;
  var x_671 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_57 : f32 = x_52.x_Vignette_Mode;
  u_xlatb12 = (x_57 < 0.5f);
  let x_60 : bool = u_xlatb12;
  if (x_60) {
    let x_63 : vec2<f32> = vs_TEXCOORD0;
    let x_67 : vec2<f32> = x_52.x_Vignette_Center;
    let x_69 : vec2<f32> = (x_63 + -(x_67));
    let x_70 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
    let x_72 : vec4<f32> = u_xlat1;
    let x_78 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_80 : vec2<f32> = (abs(vec2<f32>(x_72.y, x_72.x)) * vec2<f32>(x_78.x, x_78.x));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_81.x, x_80.x, x_80.y, x_81.w);
    let x_86 : f32 = x_52.x_ScreenParams.x;
    let x_89 : f32 = x_52.x_ScreenParams.y;
    u_xlat12 = (x_86 / x_89);
    let x_91 : f32 = u_xlat12;
    u_xlat12 = (x_91 + -1.0f);
    let x_96 : f32 = x_52.x_Vignette_Settings.w;
    let x_97 : f32 = u_xlat12;
    u_xlat12 = ((x_96 * x_97) + 1.0f);
    let x_101 : f32 = u_xlat12;
    let x_104 : f32 = u_xlat1.z;
    u_xlat1.x = (x_101 * x_104);
    let x_107 : vec4<f32> = u_xlat1;
    let x_108 : vec2<f32> = vec2<f32>(x_107.x, x_107.y);
    let x_109 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
    let x_111 : vec4<f32> = u_xlat1;
    let x_116 : vec2<f32> = clamp(vec2<f32>(x_111.x, x_111.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_117 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat1;
    let x_121 : vec2<f32> = log2(vec2<f32>(x_119.x, x_119.y));
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat1;
    let x_127 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127.z, x_127.z));
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
    let x_132 : vec4<f32> = u_xlat1;
    let x_134 : vec2<f32> = exp2(vec2<f32>(x_132.x, x_132.y));
    let x_135 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat1;
    let x_139 : vec4<f32> = u_xlat1;
    u_xlat12 = dot(vec2<f32>(x_137.x, x_137.y), vec2<f32>(x_139.x, x_139.y));
    let x_142 : f32 = u_xlat12;
    u_xlat12 = (-(x_142) + 1.0f);
    let x_145 : f32 = u_xlat12;
    u_xlat12 = max(x_145, 0.0f);
    let x_147 : f32 = u_xlat12;
    u_xlat12 = log2(x_147);
    let x_149 : f32 = u_xlat12;
    let x_151 : f32 = x_52.x_Vignette_Settings.y;
    u_xlat12 = (x_149 * x_151);
    let x_153 : f32 = u_xlat12;
    u_xlat12 = exp2(x_153);
    let x_158 : vec3<f32> = x_52.x_Vignette_Color;
    let x_161 : vec3<f32> = (-(x_158) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_162 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : f32 = u_xlat12;
    let x_166 : vec4<f32> = u_xlat1;
    let x_170 : vec3<f32> = x_52.x_Vignette_Color;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_170);
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat0;
    let x_176 : vec4<f32> = u_xlat1;
    let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_183 : f32 = u_xlat1.w;
    u_xlat2.x = (x_183 + -1.0f);
    let x_186 : f32 = u_xlat12;
    let x_188 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_198 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_198);
    u_xlat12 = x_199.w;
    let x_203 : f32 = u_xlat12;
    u_xlat3.x = (x_203 * 0.077399381f);
    let x_208 : f32 = u_xlat12;
    u_xlat7 = (x_208 + 0.055f);
    let x_211 : f32 = u_xlat7;
    u_xlat7 = (x_211 * 0.947867334f);
    let x_214 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_214), 1.1920929e-07f);
    let x_218 : f32 = u_xlat7;
    u_xlat7 = log2(x_218);
    let x_220 : f32 = u_xlat7;
    u_xlat7 = (x_220 * 2.400000095f);
    let x_223 : f32 = u_xlat7;
    u_xlat7 = exp2(x_223);
    let x_226 : f32 = u_xlat12;
    u_xlatb12 = (0.040449999f >= x_226);
    let x_228 : bool = u_xlatb12;
    if (x_228) {
      let x_233 : f32 = u_xlat3.x;
      x_229 = x_233;
    } else {
      let x_235 : f32 = u_xlat7;
      x_229 = x_235;
    }
    let x_236 : f32 = x_229;
    u_xlat12 = x_236;
    let x_238 : vec3<f32> = x_52.x_Vignette_Color;
    u_xlat3 = (-(x_238) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_241 : f32 = u_xlat12;
    let x_243 : vec3<f32> = u_xlat3;
    let x_246 : vec3<f32> = x_52.x_Vignette_Color;
    u_xlat3 = ((vec3<f32>(x_241, x_241, x_241) * x_243) + x_246);
    let x_248 : vec4<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat3;
    let x_252 : vec4<f32> = u_xlat0;
    u_xlat3 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * x_250) + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
    let x_258 : f32 = x_52.x_Vignette_Opacity;
    let x_260 : vec3<f32> = u_xlat3;
    let x_262 : vec4<f32> = u_xlat0;
    let x_264 : vec3<f32> = ((vec3<f32>(x_258, x_258, x_258) * x_260) + vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_268 : f32 = u_xlat1.w;
    u_xlat0.x = (x_268 + -1.0f);
    let x_271 : f32 = u_xlat12;
    let x_273 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_271 * x_273) + 1.0f);
  }
  let x_277 : vec2<f32> = vs_TEXCOORD1;
  let x_280 : vec4<f32> = x_52.x_Grain_Params2;
  let x_284 : vec4<f32> = x_52.x_Grain_Params2;
  let x_286 : vec2<f32> = ((x_277 * vec2<f32>(x_280.x, x_280.y)) + vec2<f32>(x_284.z, x_284.w));
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_287.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_294.x, x_294.y));
  let x_297 : vec3<f32> = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat3 = vec3<f32>(x_300.x, x_300.y, x_300.z);
  let x_302 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_302, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_306, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_312 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_312);
  let x_316 : f32 = x_52.x_Grain_Params1.x;
  let x_317 : f32 = u_xlat12;
  u_xlat12 = ((x_316 * -(x_317)) + 1.0f);
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat0;
  let x_331 : f32 = x_52.x_Grain_Params1.y;
  let x_333 : f32 = x_52.x_Grain_Params1.y;
  let x_335 : f32 = x_52.x_Grain_Params1.y;
  let x_337 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_331, x_333, x_335));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat0;
  let x_342 : f32 = u_xlat12;
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342, x_342, x_342)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat2;
  let x_353 : f32 = x_52.x_PostExposure;
  let x_355 : f32 = x_52.x_PostExposure;
  let x_357 : f32 = x_52.x_PostExposure;
  let x_359 : f32 = x_52.x_PostExposure;
  let x_360 : vec4<f32> = vec4<f32>(x_353, x_355, x_357, x_359);
  u_xlat0 = (x_350 * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.w));
  let x_367 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec3<f32> = log2(vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = clamp(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat0;
  let x_403 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_405 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_403.y, x_403.y, x_403.y));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat1.x = (x_409 * 0.5f);
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_415.x, x_415.x, x_415.x)) + vec3<f32>(x_418.x, x_418.x, x_418.x));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec3<f32> = vec3<f32>(x_433.x, x_433.y, x_433.z);
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec2<f32> = vs_TEXCOORD0;
  let x_440 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_444 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_446 : vec2<f32> = ((x_437 * vec2<f32>(x_440.x, x_440.y)) + vec2<f32>(x_444.z, x_444.w));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_454.x, x_454.y));
  u_xlat1.x = x_456.w;
  let x_460 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_460 * 2.0f) + -1.0f);
  let x_467 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_467 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_473 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_473, 0.0f, 1.0f);
  let x_477 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_477 * 2.0f) + -1.0f);
  let x_482 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_482)) + 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_488);
  let x_492 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_492) + 1.0f);
  let x_497 : f32 = u_xlat1.x;
  let x_499 : f32 = u_xlat5.x;
  u_xlat1.x = (x_497 * x_499);
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_507 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = max(abs(vec3<f32>(x_507.x, x_507.y, x_507.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = log2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat2;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat2;
  let x_528 : vec3<f32> = exp2(vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_546 : vec4<f32> = u_xlat0;
  let x_549 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_546.x, x_546.y, x_546.z, x_546.x));
  u_xlatb0 = vec3<bool>(x_549.x, x_549.y, x_549.z);
  let x_552 : bool = u_xlatb0.x;
  if (x_552) {
    let x_557 : f32 = u_xlat5.x;
    x_553 = x_557;
  } else {
    let x_560 : f32 = u_xlat2.x;
    x_553 = x_560;
  }
  let x_561 : f32 = x_553;
  u_xlat0.x = x_561;
  let x_564 : bool = u_xlatb0.y;
  if (x_564) {
    let x_569 : f32 = u_xlat5.y;
    x_565 = x_569;
  } else {
    let x_572 : f32 = u_xlat2.y;
    x_565 = x_572;
  }
  let x_573 : f32 = x_565;
  u_xlat0.y = x_573;
  let x_576 : bool = u_xlatb0.z;
  if (x_576) {
    let x_581 : f32 = u_xlat5.z;
    x_577 = x_581;
  } else {
    let x_584 : f32 = u_xlat2.z;
    x_577 = x_584;
  }
  let x_585 : f32 = x_577;
  u_xlat0.z = x_585;
  let x_587 : vec4<f32> = u_xlat1;
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat0;
  let x_600 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_601 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat0;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_607 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat2;
  let x_618 : vec3<f32> = max(abs(vec3<f32>(x_615.x, x_615.y, x_615.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = log2(vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_629 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_630 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = exp2(vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.x));
  u_xlatb0 = vec3<bool>(x_640.x, x_640.y, x_640.z);
  let x_645 : bool = u_xlatb0.x;
  if (x_645) {
    let x_650 : f32 = u_xlat1.x;
    x_646 = x_650;
  } else {
    let x_653 : f32 = u_xlat2.x;
    x_646 = x_653;
  }
  let x_654 : f32 = x_646;
  SV_Target0.x = x_654;
  let x_658 : bool = u_xlatb0.y;
  if (x_658) {
    let x_663 : f32 = u_xlat1.y;
    x_659 = x_663;
  } else {
    let x_666 : f32 = u_xlat2.y;
    x_659 = x_666;
  }
  let x_667 : f32 = x_659;
  SV_Target0.y = x_667;
  let x_670 : bool = u_xlatb0.z;
  if (x_670) {
    let x_675 : f32 = u_xlat1.z;
    x_671 = x_675;
  } else {
    let x_678 : f32 = u_xlat2.z;
    x_671 = x_678;
  }
  let x_679 : f32 = x_671;
  SV_Target0.z = x_679;
  let x_682 : f32 = u_xlat0.w;
  SV_Target0.w = x_682;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

