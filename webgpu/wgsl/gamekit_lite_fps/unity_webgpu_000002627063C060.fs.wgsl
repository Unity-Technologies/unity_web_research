struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_393 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_576 : f32;
  var x_588 : f32;
  var x_600 : f32;
  var x_726 : f32;
  var x_738 : f32;
  var x_750 : f32;
  var x_833 : f32;
  var x_845 : f32;
  var x_857 : f32;
  var x_899 : f32;
  var x_912 : f32;
  var x_924 : f32;
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
    let x_345 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
    let x_348 : f32 = u_xlat1.w;
    u_xlat2.x = (x_348 + -1.0f);
    let x_351 : f32 = u_xlat21;
    let x_353 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_351 * x_353) + 1.0f);
  } else {
    let x_363 : vec2<f32> = vs_TEXCOORD0;
    let x_364 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_363);
    u_xlat21 = x_364.w;
    let x_366 : f32 = u_xlat21;
    u_xlat2.x = (x_366 * 0.077399381f);
    let x_371 : f32 = u_xlat21;
    u_xlat9 = (x_371 + 0.055f);
    let x_374 : f32 = u_xlat9;
    u_xlat9 = (x_374 * 0.947867334f);
    let x_377 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_377), 1.1920929e-07f);
    let x_381 : f32 = u_xlat9;
    u_xlat9 = log2(x_381);
    let x_383 : f32 = u_xlat9;
    u_xlat9 = (x_383 * 2.400000095f);
    let x_386 : f32 = u_xlat9;
    u_xlat9 = exp2(x_386);
    let x_389 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_389);
    let x_391 : bool = u_xlatb21;
    if (x_391) {
      let x_397 : f32 = u_xlat2.x;
      x_393 = x_397;
    } else {
      let x_399 : f32 = u_xlat9;
      x_393 = x_399;
    }
    let x_400 : f32 = x_393;
    u_xlat21 = x_400;
    let x_402 : vec3<f32> = x_58.x_Vignette_Color;
    let x_404 : vec3<f32> = (-(x_402) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_405 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : f32 = u_xlat21;
    let x_409 : vec4<f32> = u_xlat4;
    let x_413 : vec3<f32> = x_58.x_Vignette_Color;
    let x_414 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + x_413);
    let x_415 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_417 : vec3<f32> = u_xlat0;
    let x_418 : vec4<f32> = u_xlat4;
    let x_421 : vec3<f32> = u_xlat0;
    let x_423 : vec3<f32> = ((x_417 * vec3<f32>(x_418.x, x_418.y, x_418.z)) + -(x_421));
    let x_424 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_428 : f32 = x_58.x_Vignette_Opacity;
    let x_430 : vec4<f32> = u_xlat4;
    let x_433 : vec3<f32> = u_xlat0;
    let x_434 : vec3<f32> = ((vec3<f32>(x_428, x_428, x_428) * vec3<f32>(x_430.x, x_430.y, x_430.z)) + x_433);
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_438 : f32 = u_xlat1.w;
    u_xlat0.x = (x_438 + -1.0f);
    let x_441 : f32 = u_xlat21;
    let x_443 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_441 * x_443) + 1.0f);
  }
  let x_448 : vec2<f32> = vs_TEXCOORD1;
  let x_451 : vec4<f32> = x_58.x_Grain_Params2;
  let x_455 : vec4<f32> = x_58.x_Grain_Params2;
  let x_457 : vec2<f32> = ((x_448 * vec2<f32>(x_451.x, x_451.y)) + vec2<f32>(x_455.z, x_455.w));
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_457.x, x_457.y, x_458.z);
  let x_465 : vec3<f32> = u_xlat0;
  let x_467 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_465.x, x_465.y));
  u_xlat0 = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = vec3<f32>(x_469.x, x_469.y, x_469.z);
  let x_471 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat4;
  let x_477 : vec3<f32> = clamp(vec3<f32>(x_473.x, x_473.y, x_473.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_487 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_487);
  let x_491 : f32 = x_58.x_Grain_Params1.x;
  let x_492 : f32 = u_xlat21;
  u_xlat21 = ((x_491 * -(x_492)) + 1.0f);
  let x_496 : vec3<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_496 * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec3<f32> = u_xlat0;
  let x_502 : f32 = x_58.x_Grain_Params1.y;
  let x_504 : f32 = x_58.x_Grain_Params1.y;
  let x_506 : f32 = x_58.x_Grain_Params1.y;
  u_xlat0 = (x_500 * vec3<f32>(x_502, x_504, x_506));
  let x_509 : vec3<f32> = u_xlat0;
  let x_510 : f32 = u_xlat21;
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec3<f32> = ((x_509 * vec3<f32>(x_510, x_510, x_510)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat3 = x_518;
  let x_519 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_519, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_523.z, x_523.x, x_523.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_528 : vec4<f32> = u_xlat3;
  let x_531 : vec3<f32> = max(vec3<f32>(x_528.z, x_528.x, x_528.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat1;
  let x_536 : vec3<f32> = log2(vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat1;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec3<f32> = exp2(vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_566 : vec4<f32> = u_xlat3;
  let x_569 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_566.z, x_566.x, x_566.y, x_566.z));
  u_xlatb3 = vec3<bool>(x_569.x, x_569.y, x_569.z);
  let x_573 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_573;
  let x_575 : bool = u_xlatb3.x;
  if (x_575) {
    let x_580 : f32 = u_xlat0.x;
    x_576 = x_580;
  } else {
    let x_583 : f32 = u_xlat1.x;
    x_576 = x_583;
  }
  let x_584 : f32 = x_576;
  hlslcc_movcTemp.x = x_584;
  let x_587 : bool = u_xlatb3.y;
  if (x_587) {
    let x_592 : f32 = u_xlat0.y;
    x_588 = x_592;
  } else {
    let x_595 : f32 = u_xlat1.y;
    x_588 = x_595;
  }
  let x_596 : f32 = x_588;
  hlslcc_movcTemp.y = x_596;
  let x_599 : bool = u_xlatb3.z;
  if (x_599) {
    let x_604 : f32 = u_xlat0.z;
    x_600 = x_604;
  } else {
    let x_607 : f32 = u_xlat1.z;
    x_600 = x_607;
  }
  let x_608 : f32 = x_600;
  hlslcc_movcTemp.z = x_608;
  let x_610 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_610;
  let x_611 : vec3<f32> = u_xlat0;
  let x_614 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_611 * vec3<f32>(x_614.z, x_614.z, x_614.z));
  let x_618 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_618);
  let x_622 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_624 : vec2<f32> = (vec2<f32>(x_622.x, x_622.y) * vec2<f32>(0.5f, 0.5f));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec3<f32> = u_xlat7;
  let x_630 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec2<f32> = ((vec2<f32>(x_627.y, x_627.z) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_635.x, x_635.y, x_636.w);
  let x_639 : f32 = u_xlat7.x;
  let x_641 : f32 = x_58.x_Lut2D_Params.y;
  let x_644 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_639 * x_641) + x_644);
  let x_652 : vec4<f32> = u_xlat1;
  let x_654 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_652.x, x_652.z));
  let x_655 : vec3<f32> = vec3<f32>(x_654.x, x_654.y, x_654.z);
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_659;
  let x_662 : vec2<f32> = u_xlat16;
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_662 + vec2<f32>(x_663.x, x_663.z));
  let x_669 : vec2<f32> = u_xlat14;
  let x_670 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_669);
  let x_671 : vec3<f32> = vec3<f32>(x_670.x, x_670.y, x_670.z);
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_675 : f32 = u_xlat0.x;
  let x_677 : f32 = x_58.x_Lut2D_Params.z;
  let x_680 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_675 * x_677) + -(x_680));
  let x_684 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec3<f32> = u_xlat0;
  let x_692 : vec3<f32> = u_xlat7;
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_690.x, x_690.x, x_690.x) * x_692) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec3<f32> = u_xlat0;
  let x_699 : vec3<f32> = (x_697 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_702 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_705 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_705 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_708 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_708), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_711);
  let x_713 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_713 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_716 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_716);
  let x_720 : vec3<f32> = u_xlat0;
  let x_722 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.x));
  u_xlatb0 = vec3<bool>(x_722.x, x_722.y, x_722.z);
  let x_725 : bool = u_xlatb0.x;
  if (x_725) {
    let x_730 : f32 = u_xlat1.x;
    x_726 = x_730;
  } else {
    let x_733 : f32 = u_xlat2.x;
    x_726 = x_733;
  }
  let x_734 : f32 = x_726;
  u_xlat0.x = x_734;
  let x_737 : bool = u_xlatb0.y;
  if (x_737) {
    let x_742 : f32 = u_xlat1.y;
    x_738 = x_742;
  } else {
    let x_745 : f32 = u_xlat2.y;
    x_738 = x_745;
  }
  let x_746 : f32 = x_738;
  u_xlat0.y = x_746;
  let x_749 : bool = u_xlatb0.z;
  if (x_749) {
    let x_754 : f32 = u_xlat1.z;
    x_750 = x_754;
  } else {
    let x_757 : f32 = u_xlat2.z;
    x_750 = x_757;
  }
  let x_758 : f32 = x_750;
  u_xlat0.z = x_758;
  let x_760 : vec2<f32> = vs_TEXCOORD0;
  let x_763 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_767 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_769 : vec2<f32> = ((x_760 * vec2<f32>(x_763.x, x_763.y)) + vec2<f32>(x_767.z, x_767.w));
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_777 : vec4<f32> = u_xlat1;
  let x_779 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_777.x, x_777.y));
  u_xlat21 = x_779.w;
  let x_781 : f32 = u_xlat21;
  u_xlat21 = ((x_781 * 2.0f) + -1.0f);
  let x_784 : f32 = u_xlat21;
  u_xlat1.x = ((x_784 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_790, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_794 * 2.0f) + -1.0f);
  let x_798 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_798)) + 1.0f);
  let x_802 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_802);
  let x_804 : f32 = u_xlat21;
  u_xlat21 = (-(x_804) + 1.0f);
  let x_807 : f32 = u_xlat21;
  let x_809 : f32 = u_xlat1.x;
  u_xlat21 = (x_807 * x_809);
  let x_811 : vec3<f32> = u_xlat0;
  let x_812 : vec3<f32> = (x_811 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_813 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_815), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_818 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_818);
  let x_820 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_820 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_822 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_822);
  let x_824 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_824 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_827 : vec3<f32> = u_xlat0;
  let x_829 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_827.x, x_827.y, x_827.z, x_827.x));
  u_xlatb0 = vec3<bool>(x_829.x, x_829.y, x_829.z);
  let x_832 : bool = u_xlatb0.x;
  if (x_832) {
    let x_837 : f32 = u_xlat1.x;
    x_833 = x_837;
  } else {
    let x_840 : f32 = u_xlat2.x;
    x_833 = x_840;
  }
  let x_841 : f32 = x_833;
  u_xlat0.x = x_841;
  let x_844 : bool = u_xlatb0.y;
  if (x_844) {
    let x_849 : f32 = u_xlat1.y;
    x_845 = x_849;
  } else {
    let x_852 : f32 = u_xlat2.y;
    x_845 = x_852;
  }
  let x_853 : f32 = x_845;
  u_xlat0.y = x_853;
  let x_856 : bool = u_xlatb0.z;
  if (x_856) {
    let x_861 : f32 = u_xlat1.z;
    x_857 = x_861;
  } else {
    let x_864 : f32 = u_xlat2.z;
    x_857 = x_864;
  }
  let x_865 : f32 = x_857;
  u_xlat0.z = x_865;
  let x_867 : f32 = u_xlat21;
  let x_872 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_867, x_867, x_867) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_872);
  let x_874 : vec3<f32> = u_xlat0;
  let x_875 : vec3<f32> = (x_874 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_876 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_878 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_880 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_880 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_882 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_882), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_885 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_885);
  let x_887 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_887 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_889 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_889);
  let x_891 : vec3<f32> = u_xlat0;
  let x_893 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.x));
  u_xlatb0 = vec3<bool>(x_893.x, x_893.y, x_893.z);
  let x_898 : bool = u_xlatb0.x;
  if (x_898) {
    let x_903 : f32 = u_xlat1.x;
    x_899 = x_903;
  } else {
    let x_906 : f32 = u_xlat2.x;
    x_899 = x_906;
  }
  let x_907 : f32 = x_899;
  SV_Target0.x = x_907;
  let x_911 : bool = u_xlatb0.y;
  if (x_911) {
    let x_916 : f32 = u_xlat1.y;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.y;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  SV_Target0.y = x_920;
  let x_923 : bool = u_xlatb0.z;
  if (x_923) {
    let x_928 : f32 = u_xlat1.z;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat2.z;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  SV_Target0.z = x_932;
  let x_935 : f32 = u_xlat3.w;
  SV_Target0.w = x_935;
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

