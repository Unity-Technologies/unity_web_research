struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat10 : f32;
  var x_368 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_126 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_126;
  u_xlati_loop_1 = 0i;
  loop {
    let x_134 : i32 = u_xlati_loop_1;
    let x_135 : i32 = u_xlati21;
    if ((x_134 < x_135)) {
    } else {
      break;
    }
    let x_139 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_139);
    let x_143 : f32 = u_xlat16.x;
    u_xlat16.x = (x_143 + 0.5f);
    let x_147 : f32 = u_xlat16.x;
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = (x_147 / x_149);
    let x_152 : vec2<f32> = u_xlat8;
    u_xlat16 = x_152;
    let x_153 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_153, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_157 : vec2<f32> = u_xlat16;
    let x_160 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_157 * vec2<f32>(x_160, x_160));
    let x_169 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_169, 0.0f);
    u_xlat6 = x_170;
    let x_176 : vec4<f32> = u_xlat2;
    let x_178 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_176.x, x_176.y), 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = u_xlat3;
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_182 * x_183) + x_185);
    let x_187 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_187 + x_188);
    let x_190 : vec2<f32> = u_xlat7;
    let x_191 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_190 + x_191);

    continuing {
      let x_193 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_193 + 1i);
    }
  }
  let x_195 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_195 / x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_209 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_209 < 0.5f);
  let x_211 : bool = u_xlatb21;
  if (x_211) {
    let x_214 : vec2<f32> = vs_TEXCOORD0;
    let x_218 : vec2<f32> = x_51.x_Vignette_Center;
    let x_220 : vec2<f32> = (x_214 + -(x_218));
    let x_221 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat1;
    let x_228 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_230 : vec2<f32> = (abs(vec2<f32>(x_223.y, x_223.x)) * vec2<f32>(x_228.x, x_228.x));
    let x_231 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_231.x, x_230.x, x_230.y, x_231.w);
    let x_234 : f32 = x_51.x_ScreenParams.x;
    let x_236 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_234 / x_236);
    let x_238 : f32 = u_xlat21;
    u_xlat21 = (x_238 + -1.0f);
    let x_241 : f32 = x_51.x_Vignette_Settings.w;
    let x_242 : f32 = u_xlat21;
    u_xlat21 = ((x_241 * x_242) + 1.0f);
    let x_245 : f32 = u_xlat21;
    let x_247 : f32 = u_xlat1.z;
    u_xlat1.x = (x_245 * x_247);
    let x_250 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
    let x_252 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat1;
    let x_258 : vec2<f32> = clamp(vec2<f32>(x_254.x, x_254.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_259 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat1;
    let x_263 : vec2<f32> = log2(vec2<f32>(x_261.x, x_261.y));
    let x_264 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_271 : vec2<f32> = (vec2<f32>(x_266.x, x_266.y) * vec2<f32>(x_269.z, x_269.z));
    let x_272 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat1;
    let x_276 : vec2<f32> = exp2(vec2<f32>(x_274.x, x_274.y));
    let x_277 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat1;
    let x_281 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_279.x, x_279.y), vec2<f32>(x_281.x, x_281.y));
    let x_284 : f32 = u_xlat21;
    u_xlat21 = (-(x_284) + 1.0f);
    let x_287 : f32 = u_xlat21;
    u_xlat21 = max(x_287, 0.0f);
    let x_289 : f32 = u_xlat21;
    u_xlat21 = log2(x_289);
    let x_291 : f32 = u_xlat21;
    let x_293 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_291 * x_293);
    let x_295 : f32 = u_xlat21;
    u_xlat21 = exp2(x_295);
    let x_300 : vec3<f32> = x_51.x_Vignette_Color;
    let x_303 : vec3<f32> = (-(x_300) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_304 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : f32 = u_xlat21;
    let x_308 : vec4<f32> = u_xlat1;
    let x_312 : vec3<f32> = x_51.x_Vignette_Color;
    let x_313 : vec3<f32> = ((vec3<f32>(x_306, x_306, x_306) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + x_312);
    let x_314 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat0;
    let x_318 : vec4<f32> = u_xlat1;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.x, x_318.y, x_318.z));
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_324 : f32 = u_xlat1.w;
    u_xlat2.x = (x_324 + -1.0f);
    let x_327 : f32 = u_xlat21;
    let x_329 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_327 * x_329) + 1.0f);
  } else {
    let x_339 : vec2<f32> = vs_TEXCOORD0;
    let x_340 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_339);
    u_xlat21 = x_340.w;
    let x_342 : f32 = u_xlat21;
    u_xlat3.x = (x_342 * 0.077399381f);
    let x_347 : f32 = u_xlat21;
    u_xlat10 = (x_347 + 0.055f);
    let x_350 : f32 = u_xlat10;
    u_xlat10 = (x_350 * 0.947867334f);
    let x_353 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_353), 1.1920929e-07f);
    let x_357 : f32 = u_xlat10;
    u_xlat10 = log2(x_357);
    let x_359 : f32 = u_xlat10;
    u_xlat10 = (x_359 * 2.400000095f);
    let x_362 : f32 = u_xlat10;
    u_xlat10 = exp2(x_362);
    let x_365 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_365);
    let x_367 : bool = u_xlatb21;
    if (x_367) {
      let x_372 : f32 = u_xlat3.x;
      x_368 = x_372;
    } else {
      let x_374 : f32 = u_xlat10;
      x_368 = x_374;
    }
    let x_375 : f32 = x_368;
    u_xlat21 = x_375;
    let x_377 : vec3<f32> = x_51.x_Vignette_Color;
    let x_379 : vec3<f32> = (-(x_377) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_380 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
    let x_382 : f32 = u_xlat21;
    let x_384 : vec4<f32> = u_xlat3;
    let x_388 : vec3<f32> = x_51.x_Vignette_Color;
    let x_389 : vec3<f32> = ((vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z)) + x_388);
    let x_390 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_392 : vec4<f32> = u_xlat0;
    let x_394 : vec4<f32> = u_xlat3;
    let x_397 : vec4<f32> = u_xlat0;
    let x_400 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.y, x_394.z)) + -(vec3<f32>(x_397.x, x_397.y, x_397.z)));
    let x_401 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_405 : f32 = x_51.x_Vignette_Opacity;
    let x_407 : vec4<f32> = u_xlat3;
    let x_410 : vec4<f32> = u_xlat0;
    let x_412 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_416 : f32 = u_xlat1.w;
    u_xlat0.x = (x_416 + -1.0f);
    let x_419 : f32 = u_xlat21;
    let x_421 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_419 * x_421) + 1.0f);
  }
  let x_426 : vec2<f32> = vs_TEXCOORD1;
  let x_429 : vec4<f32> = x_51.x_Grain_Params2;
  let x_433 : vec4<f32> = x_51.x_Grain_Params2;
  let x_435 : vec2<f32> = ((x_426 * vec2<f32>(x_429.x, x_429.y)) + vec2<f32>(x_433.z, x_433.w));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_443 : vec4<f32> = u_xlat0;
  let x_445 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_443.x, x_443.y));
  let x_446 : vec3<f32> = vec3<f32>(x_445.x, x_445.y, x_445.z);
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat1;
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat3;
  let x_457 : vec3<f32> = clamp(vec3<f32>(x_453.x, x_453.y, x_453.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_467 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_467);
  let x_471 : f32 = x_51.x_Grain_Params1.x;
  let x_472 : f32 = u_xlat21;
  u_xlat21 = ((x_471 * -(x_472)) + 1.0f);
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_486 : f32 = x_51.x_Grain_Params1.y;
  let x_488 : f32 = x_51.x_Grain_Params1.y;
  let x_490 : f32 = x_51.x_Grain_Params1.y;
  let x_492 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_486, x_488, x_490));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : f32 = u_xlat21;
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497, x_497, x_497)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat2;
  let x_509 : f32 = x_51.x_PostExposure;
  let x_511 : f32 = x_51.x_PostExposure;
  let x_513 : f32 = x_51.x_PostExposure;
  let x_515 : f32 = x_51.x_PostExposure;
  let x_516 : vec4<f32> = vec4<f32>(x_509, x_511, x_513, x_515);
  u_xlat0 = (vec4<f32>(x_505.w, x_505.x, x_505.y, x_505.z) * vec4<f32>(x_516.x, x_516.y, x_516.z, x_516.w));
  let x_523 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = ((vec3<f32>(x_523.y, x_523.z, x_523.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_531 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat1;
  let x_535 : vec3<f32> = log2(vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat1;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat1;
  let x_552 : vec3<f32> = clamp(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat1;
  let x_559 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_561 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_559.y, x_559.y, x_559.y));
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_566 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_566 * 0.5f);
  let x_568 : vec4<f32> = u_xlat1;
  let x_571 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_574 : f32 = u_xlat22;
  let x_576 : vec3<f32> = ((vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_571.x, x_571.x, x_571.x)) + vec3<f32>(x_574, x_574, x_574));
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_587 : vec4<f32> = u_xlat1;
  let x_589 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec3<f32> = vec3<f32>(x_589.x, x_589.y, x_589.z);
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_591.x, x_590.x, x_590.y, x_590.z);
  let x_596 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_596);
  let x_598 : bool = u_xlatb1;
  if (x_598) {
    let x_601 : vec4<f32> = u_xlat0;
    let x_602 : vec3<f32> = vec3<f32>(x_601.y, x_601.z, x_601.w);
    let x_603 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat1;
    let x_609 : vec3<f32> = clamp(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_610 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_612 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_618 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_618.y, x_618.z, x_618.w, x_618.x);
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

