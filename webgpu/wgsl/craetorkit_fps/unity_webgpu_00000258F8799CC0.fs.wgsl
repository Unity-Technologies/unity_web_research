struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(2) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

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
  var u_xlat13 : f32;
  var u_xlatb1 : bool;
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
  let x_354 : f32 = x_52.x_PostExposure;
  let x_356 : f32 = x_52.x_PostExposure;
  let x_358 : f32 = x_52.x_PostExposure;
  let x_360 : f32 = x_52.x_PostExposure;
  let x_361 : vec4<f32> = vec4<f32>(x_354, x_356, x_358, x_360);
  u_xlat0 = (vec4<f32>(x_350.w, x_350.x, x_350.y, x_350.z) * vec4<f32>(x_361.x, x_361.y, x_361.z, x_361.w));
  let x_368 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.y, x_368.z, x_368.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec3<f32> = log2(vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = clamp(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat1;
  let x_404 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_406 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_404.y, x_404.y, x_404.y));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_411 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat13 = (x_411 * 0.5f);
  let x_413 : vec4<f32> = u_xlat1;
  let x_416 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_419 : f32 = u_xlat13;
  let x_421 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419, x_419, x_419));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec3<f32> = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_435.x, x_435.y, x_435.z);
  let x_441 : f32 = x_52.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_441);
  let x_443 : bool = u_xlatb1;
  if (x_443) {
    let x_446 : vec4<f32> = u_xlat0;
    let x_447 : vec3<f32> = vec3<f32>(x_446.y, x_446.z, x_446.w);
    let x_448 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_450 : vec4<f32> = u_xlat1;
    let x_454 : vec3<f32> = clamp(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_455 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    let x_457 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_457.x, x_457.y, x_457.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_463 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_463.y, x_463.z, x_463.w, x_463.x);
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

