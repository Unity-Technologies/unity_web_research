struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlatb4 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_403 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_516 : f32;
  var x_528 : f32;
  var x_540 : f32;
  var x_666 : f32;
  var x_678 : f32;
  var x_690 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat7;
  let x_44 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat21;
  let x_49 : vec3<f32> = u_xlat7;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat7;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat7;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_106 : i32 = u_xlati21;
  u_xlati21 = min(x_106, 16i);
  let x_109 : i32 = u_xlati21;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat7;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_143 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_143;
  u_xlati_loop_1 = 0i;
  loop {
    let x_152 : i32 = u_xlati_loop_1;
    let x_153 : i32 = u_xlati21;
    if ((x_152 < x_153)) {
    } else {
      break;
    }
    let x_157 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_157);
    let x_161 : f32 = u_xlat6.x;
    u_xlat6.x = (x_161 + 0.5f);
    let x_165 : f32 = u_xlat6.x;
    let x_167 : f32 = u_xlat1.x;
    u_xlat2.x = (x_165 / x_167);
    let x_170 : vec2<f32> = u_xlat8;
    let x_171 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat6;
    let x_177 : vec2<f32> = clamp(vec2<f32>(x_173.x, x_173.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_178 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat6;
    let x_184 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_186 : vec2<f32> = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_184, x_184));
    let x_187 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_194.x, x_194.y), 0.0f);
    u_xlat6 = x_196;
    let x_202 : vec3<f32> = u_xlat2;
    let x_204 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_202.x, x_202.y), 0.0f);
    let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
    let x_206 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat6;
    let x_209 : vec4<f32> = u_xlat3;
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_208 * x_209) + x_211);
    let x_213 : vec4<f32> = u_xlat3;
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_213 + x_214);
    let x_216 : vec3<f32> = u_xlat7;
    let x_218 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_216.x, x_216.y) + x_218);

    continuing {
      let x_220 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_220 + 1i);
    }
  }
  let x_222 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_222 / x_223);
  let x_225 : vec3<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : f32 = x_58.x_Vignette_Mode;
  u_xlatb21 = (x_234 < 0.5f);
  let x_236 : bool = u_xlatb21;
  if (x_236) {
    let x_239 : vec2<f32> = vs_TEXCOORD0;
    let x_243 : vec2<f32> = x_58.x_Vignette_Center;
    let x_245 : vec2<f32> = (x_239 + -(x_243));
    let x_246 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
    let x_248 : vec4<f32> = u_xlat1;
    let x_253 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_255 : vec2<f32> = (abs(vec2<f32>(x_248.y, x_248.x)) * vec2<f32>(x_253.x, x_253.x));
    let x_256 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_256.w);
    let x_259 : f32 = x_58.x_ScreenParams.x;
    let x_261 : f32 = x_58.x_ScreenParams.y;
    u_xlat21 = (x_259 / x_261);
    let x_263 : f32 = u_xlat21;
    u_xlat21 = (x_263 + -1.0f);
    let x_266 : f32 = x_58.x_Vignette_Settings.w;
    let x_267 : f32 = u_xlat21;
    u_xlat21 = ((x_266 * x_267) + 1.0f);
    let x_270 : f32 = u_xlat21;
    let x_272 : f32 = u_xlat1.z;
    u_xlat1.x = (x_270 * x_272);
    let x_275 : vec4<f32> = u_xlat1;
    let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
    let x_277 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat1;
    let x_283 : vec2<f32> = clamp(vec2<f32>(x_279.x, x_279.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_284 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat1;
    let x_288 : vec2<f32> = log2(vec2<f32>(x_286.x, x_286.y));
    let x_289 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
    let x_291 : vec4<f32> = u_xlat1;
    let x_294 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_296 : vec2<f32> = (vec2<f32>(x_291.x, x_291.y) * vec2<f32>(x_294.z, x_294.z));
    let x_297 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat1;
    let x_301 : vec2<f32> = exp2(vec2<f32>(x_299.x, x_299.y));
    let x_302 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_302.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat1;
    let x_306 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_304.x, x_304.y), vec2<f32>(x_306.x, x_306.y));
    let x_309 : f32 = u_xlat21;
    u_xlat21 = (-(x_309) + 1.0f);
    let x_312 : f32 = u_xlat21;
    u_xlat21 = max(x_312, 0.0f);
    let x_314 : f32 = u_xlat21;
    u_xlat21 = log2(x_314);
    let x_316 : f32 = u_xlat21;
    let x_318 : f32 = x_58.x_Vignette_Settings.y;
    u_xlat21 = (x_316 * x_318);
    let x_320 : f32 = u_xlat21;
    u_xlat21 = exp2(x_320);
    let x_325 : vec3<f32> = x_58.x_Vignette_Color;
    let x_328 : vec3<f32> = (-(x_325) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_329 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : f32 = u_xlat21;
    let x_333 : vec4<f32> = u_xlat1;
    let x_337 : vec3<f32> = x_58.x_Vignette_Color;
    let x_338 : vec3<f32> = ((vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + x_337);
    let x_339 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : vec3<f32> = u_xlat0;
    let x_342 : vec4<f32> = u_xlat1;
    let x_344 : vec3<f32> = (x_341 * vec3<f32>(x_342.x, x_342.y, x_342.z));
    let x_345 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
    let x_348 : f32 = u_xlat1.w;
    u_xlat1.x = (x_348 + -1.0f);
    let x_351 : f32 = u_xlat21;
    let x_353 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_351 * x_353) + 1.0f);
  } else {
    let x_363 : vec2<f32> = vs_TEXCOORD0;
    let x_364 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_363);
    u_xlat21 = x_364.w;
    let x_366 : f32 = u_xlat21;
    u_xlat1.x = (x_366 * 0.077399381f);
    let x_370 : f32 = u_xlat21;
    u_xlat8.x = (x_370 + 0.055f);
    let x_375 : f32 = u_xlat8.x;
    u_xlat8.x = (x_375 * 0.947867334f);
    let x_380 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_380), 1.1920929e-07f);
    let x_386 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_386);
    let x_390 : f32 = u_xlat8.x;
    u_xlat8.x = (x_390 * 2.400000095f);
    let x_395 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_395);
    let x_399 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_399);
    let x_401 : bool = u_xlatb21;
    if (x_401) {
      let x_407 : f32 = u_xlat1.x;
      x_403 = x_407;
    } else {
      let x_410 : f32 = u_xlat8.x;
      x_403 = x_410;
    }
    let x_411 : f32 = x_403;
    u_xlat21 = x_411;
    let x_413 : vec3<f32> = x_58.x_Vignette_Color;
    let x_415 : vec3<f32> = (-(x_413) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
    let x_418 : f32 = u_xlat21;
    let x_420 : vec4<f32> = u_xlat1;
    let x_424 : vec3<f32> = x_58.x_Vignette_Color;
    let x_425 : vec3<f32> = ((vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + x_424);
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_428 : vec3<f32> = u_xlat0;
    let x_429 : vec4<f32> = u_xlat1;
    let x_432 : vec3<f32> = u_xlat0;
    let x_434 : vec3<f32> = ((x_428 * vec3<f32>(x_429.x, x_429.y, x_429.z)) + -(x_432));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_439 : f32 = x_58.x_Vignette_Opacity;
    let x_441 : vec4<f32> = u_xlat1;
    let x_444 : vec3<f32> = u_xlat0;
    let x_445 : vec3<f32> = ((vec3<f32>(x_439, x_439, x_439) * vec3<f32>(x_441.x, x_441.y, x_441.z)) + x_444);
    let x_446 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_449 : f32 = u_xlat1.w;
    u_xlat0.x = (x_449 + -1.0f);
    let x_452 : f32 = u_xlat21;
    let x_454 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_452 * x_454) + 1.0f);
  }
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = x_458;
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_459, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_463 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_463.z, x_463.x, x_463.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_468 : vec4<f32> = u_xlat3;
  let x_471 : vec3<f32> = max(vec3<f32>(x_468.z, x_468.x, x_468.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = log2(vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = exp2(vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat1;
  let x_498 : vec3<f32> = ((vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_499 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_506 : vec4<f32> = u_xlat3;
  let x_509 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_506.z, x_506.x, x_506.y, x_506.z));
  u_xlatb4 = vec3<bool>(x_509.x, x_509.y, x_509.z);
  let x_513 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_513;
  let x_515 : bool = u_xlatb4.x;
  if (x_515) {
    let x_520 : f32 = u_xlat0.x;
    x_516 = x_520;
  } else {
    let x_523 : f32 = u_xlat1.x;
    x_516 = x_523;
  }
  let x_524 : f32 = x_516;
  hlslcc_movcTemp.x = x_524;
  let x_527 : bool = u_xlatb4.y;
  if (x_527) {
    let x_532 : f32 = u_xlat0.y;
    x_528 = x_532;
  } else {
    let x_535 : f32 = u_xlat1.y;
    x_528 = x_535;
  }
  let x_536 : f32 = x_528;
  hlslcc_movcTemp.y = x_536;
  let x_539 : bool = u_xlatb4.z;
  if (x_539) {
    let x_544 : f32 = u_xlat0.z;
    x_540 = x_544;
  } else {
    let x_547 : f32 = u_xlat1.z;
    x_540 = x_547;
  }
  let x_548 : f32 = x_540;
  hlslcc_movcTemp.z = x_548;
  let x_550 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_550;
  let x_551 : vec3<f32> = u_xlat0;
  let x_554 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_551 * vec3<f32>(x_554.z, x_554.z, x_554.z));
  let x_558 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_558);
  let x_562 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_564 : vec2<f32> = (vec2<f32>(x_562.x, x_562.y) * vec2<f32>(0.5f, 0.5f));
  let x_565 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_567 : vec3<f32> = u_xlat7;
  let x_570 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_573 : vec4<f32> = u_xlat1;
  let x_575 : vec2<f32> = ((vec2<f32>(x_567.y, x_567.z) * vec2<f32>(x_570.x, x_570.y)) + vec2<f32>(x_573.x, x_573.y));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_576.x, x_575.x, x_575.y, x_576.w);
  let x_579 : f32 = u_xlat7.x;
  let x_581 : f32 = x_58.x_Lut2D_Params.y;
  let x_584 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_579 * x_581) + x_584);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_592.x, x_592.z));
  let x_595 : vec3<f32> = vec3<f32>(x_594.x, x_594.y, x_594.z);
  let x_596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_599 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_599;
  let x_602 : vec2<f32> = u_xlat16;
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_602 + vec2<f32>(x_603.x, x_603.z));
  let x_609 : vec2<f32> = u_xlat14;
  let x_610 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_609);
  let x_611 : vec3<f32> = vec3<f32>(x_610.x, x_610.y, x_610.z);
  let x_612 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat0.x;
  let x_617 : f32 = x_58.x_Lut2D_Params.z;
  let x_620 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_615 * x_617) + -(x_620));
  let x_624 : vec4<f32> = u_xlat4;
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec3<f32> = u_xlat0;
  let x_632 : vec3<f32> = u_xlat7;
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * x_632) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec3<f32> = u_xlat0;
  let x_639 : vec3<f32> = (x_637 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_642 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_645 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_645 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_648 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_648), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_651 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_651);
  let x_653 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_653 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_656 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_656);
  let x_660 : vec3<f32> = u_xlat0;
  let x_662 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.x));
  u_xlatb0 = vec3<bool>(x_662.x, x_662.y, x_662.z);
  let x_665 : bool = u_xlatb0.x;
  if (x_665) {
    let x_670 : f32 = u_xlat1.x;
    x_666 = x_670;
  } else {
    let x_673 : f32 = u_xlat2.x;
    x_666 = x_673;
  }
  let x_674 : f32 = x_666;
  u_xlat3.x = x_674;
  let x_677 : bool = u_xlatb0.y;
  if (x_677) {
    let x_682 : f32 = u_xlat1.y;
    x_678 = x_682;
  } else {
    let x_685 : f32 = u_xlat2.y;
    x_678 = x_685;
  }
  let x_686 : f32 = x_678;
  u_xlat3.y = x_686;
  let x_689 : bool = u_xlatb0.z;
  if (x_689) {
    let x_694 : f32 = u_xlat1.z;
    x_690 = x_694;
  } else {
    let x_697 : f32 = u_xlat2.z;
    x_690 = x_697;
  }
  let x_698 : f32 = x_690;
  u_xlat3.z = x_698;
  let x_702 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_702);
  let x_706 : bool = u_xlatb0.x;
  if (x_706) {
    let x_709 : vec4<f32> = u_xlat3;
    u_xlat0 = vec3<f32>(x_709.x, x_709.y, x_709.z);
    let x_711 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_711, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_715 : vec3<f32> = u_xlat0;
    u_xlat3.w = dot(x_715, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_724 : vec4<f32> = u_xlat3;
  SV_Target0 = x_724;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

