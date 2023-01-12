struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(7) var sampler_Vignette_Mask : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var x_239 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat11 : vec2<f32>;
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
  u_xlatb15 = (x_57 < 0.5f);
  let x_60 : bool = u_xlatb15;
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
    u_xlat15 = (x_86 / x_89);
    let x_91 : f32 = u_xlat15;
    u_xlat15 = (x_91 + -1.0f);
    let x_96 : f32 = x_52.x_Vignette_Settings.w;
    let x_97 : f32 = u_xlat15;
    u_xlat15 = ((x_96 * x_97) + 1.0f);
    let x_101 : f32 = u_xlat15;
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
    u_xlat15 = dot(vec2<f32>(x_137.x, x_137.y), vec2<f32>(x_139.x, x_139.y));
    let x_142 : f32 = u_xlat15;
    u_xlat15 = (-(x_142) + 1.0f);
    let x_145 : f32 = u_xlat15;
    u_xlat15 = max(x_145, 0.0f);
    let x_147 : f32 = u_xlat15;
    u_xlat15 = log2(x_147);
    let x_149 : f32 = u_xlat15;
    let x_151 : f32 = x_52.x_Vignette_Settings.y;
    u_xlat15 = (x_149 * x_151);
    let x_153 : f32 = u_xlat15;
    u_xlat15 = exp2(x_153);
    let x_158 : vec3<f32> = x_52.x_Vignette_Color;
    let x_161 : vec3<f32> = (-(x_158) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_162 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : f32 = u_xlat15;
    let x_166 : vec4<f32> = u_xlat1;
    let x_170 : vec3<f32> = x_52.x_Vignette_Color;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_170);
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = u_xlat0;
    let x_177 : vec4<f32> = u_xlat1;
    let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : f32 = u_xlat1.w;
    u_xlat1.x = (x_183 + -1.0f);
    let x_186 : f32 = u_xlat15;
    let x_188 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_198 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_198);
    u_xlat15 = x_199.w;
    let x_201 : f32 = u_xlat15;
    u_xlat1.x = (x_201 * 0.077399381f);
    let x_207 : f32 = u_xlat15;
    u_xlat6.x = (x_207 + 0.055f);
    let x_212 : f32 = u_xlat6.x;
    u_xlat6.x = (x_212 * 0.947867334f);
    let x_217 : f32 = u_xlat6.x;
    u_xlat6.x = max(abs(x_217), 1.1920929e-07f);
    let x_223 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_223);
    let x_227 : f32 = u_xlat6.x;
    u_xlat6.x = (x_227 * 2.400000095f);
    let x_232 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_232);
    let x_236 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_236);
    let x_238 : bool = u_xlatb15;
    if (x_238) {
      let x_243 : f32 = u_xlat1.x;
      x_239 = x_243;
    } else {
      let x_246 : f32 = u_xlat6.x;
      x_239 = x_246;
    }
    let x_247 : f32 = x_239;
    u_xlat15 = x_247;
    let x_249 : vec3<f32> = x_52.x_Vignette_Color;
    let x_251 : vec3<f32> = (-(x_249) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_252 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : f32 = u_xlat15;
    let x_256 : vec4<f32> = u_xlat1;
    let x_260 : vec3<f32> = x_52.x_Vignette_Color;
    let x_261 : vec3<f32> = ((vec3<f32>(x_254, x_254, x_254) * vec3<f32>(x_256.x, x_256.y, x_256.z)) + x_260);
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = u_xlat0;
    let x_272 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z)) + -(vec3<f32>(x_269.x, x_269.y, x_269.z)));
    let x_273 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_277 : f32 = x_52.x_Vignette_Opacity;
    let x_279 : vec4<f32> = u_xlat1;
    let x_282 : vec4<f32> = u_xlat0;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277, x_277, x_277) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : f32 = u_xlat1.w;
    u_xlat0.x = (x_288 + -1.0f);
    let x_291 : f32 = u_xlat15;
    let x_293 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_291 * x_293) + 1.0f);
  }
  let x_297 : vec4<f32> = u_xlat2;
  let x_300 : f32 = x_52.x_PostExposure;
  let x_302 : f32 = x_52.x_PostExposure;
  let x_304 : f32 = x_52.x_PostExposure;
  let x_306 : f32 = x_52.x_PostExposure;
  let x_307 : vec4<f32> = vec4<f32>(x_300, x_302, x_304, x_306);
  u_xlat0 = (x_297 * vec4<f32>(x_307.x, x_307.y, x_307.z, x_307.w));
  let x_314 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.z, x_314.x, x_314.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = log2(vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat1;
  let x_343 : vec3<f32> = clamp(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat1;
  let x_350 : vec3<f32> = x_52.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_350.z, x_350.z, x_350.z));
  let x_354 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_354);
  let x_358 : vec3<f32> = x_52.x_Lut2D_Params;
  let x_361 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(0.5f, 0.5f));
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_364 : vec3<f32> = u_xlat6;
  let x_367 : vec3<f32> = x_52.x_Lut2D_Params;
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec2<f32> = ((vec2<f32>(x_364.y, x_364.z) * vec2<f32>(x_367.x, x_367.y)) + vec2<f32>(x_370.x, x_370.y));
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_373.x, x_372.x, x_372.y, x_373.w);
  let x_376 : f32 = u_xlat6.x;
  let x_378 : f32 = x_52.x_Lut2D_Params.y;
  let x_381 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_376 * x_378) + x_381);
  let x_390 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_390.x, x_390.z));
  u_xlat3 = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_397 : f32 = x_52.x_Lut2D_Params.y;
  u_xlat4.x = x_397;
  u_xlat4.y = 0.0f;
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_401.x, x_401.z) + x_403);
  let x_408 : vec2<f32> = u_xlat11;
  let x_409 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_408);
  let x_410 : vec3<f32> = vec3<f32>(x_409.x, x_409.y, x_409.z);
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat1.x;
  let x_416 : f32 = x_52.x_Lut2D_Params.z;
  let x_419 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_414 * x_416) + -(x_419));
  let x_423 : vec3<f32> = u_xlat3;
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec3<f32> = u_xlat6;
  let x_432 : vec3<f32> = u_xlat3;
  let x_433 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.x, x_428.x) * x_430) + x_432);
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_439 : f32 = x_52.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_439);
  let x_441 : bool = u_xlatb1;
  if (x_441) {
    let x_444 : vec4<f32> = u_xlat0;
    let x_445 : vec3<f32> = vec3<f32>(x_444.x, x_444.y, x_444.z);
    let x_446 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_448 : vec4<f32> = u_xlat1;
    let x_452 : vec3<f32> = clamp(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_453 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_455 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_465 : vec4<f32> = u_xlat0;
  SV_Target0 = x_465;
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

