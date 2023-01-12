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
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var x_395 : f32;
  var u_xlat15 : vec2<f32>;
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
  let x_129 : vec2<f32> = vs_TEXCOORD0;
  let x_130 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_139 : i32 = u_xlati_loop_1;
    let x_140 : i32 = u_xlati21;
    if ((x_139 < x_140)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_144);
    let x_148 : f32 = u_xlat6.x;
    u_xlat6.x = (x_148 + 0.5f);
    let x_152 : f32 = u_xlat6.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_157 : vec3<f32> = u_xlat8;
    let x_158 : vec2<f32> = vec2<f32>(x_157.x, x_157.y);
    let x_159 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat6;
    let x_165 : vec2<f32> = clamp(vec2<f32>(x_161.x, x_161.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_166 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
    let x_168 : vec4<f32> = u_xlat6;
    let x_172 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_174 : vec2<f32> = (vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_172, x_172));
    let x_175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_182.x, x_182.y), 0.0f);
    u_xlat6 = x_184;
    let x_190 : vec3<f32> = u_xlat2;
    let x_192 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_190.x, x_190.y), 0.0f);
    let x_193 : vec3<f32> = vec3<f32>(x_192.x, x_192.y, x_192.z);
    let x_194 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat6;
    let x_197 : vec4<f32> = u_xlat3;
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_196 * x_197) + x_199);
    let x_201 : vec4<f32> = u_xlat3;
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_201 + x_202);
    let x_204 : vec2<f32> = u_xlat7;
    let x_205 : vec3<f32> = u_xlat8;
    let x_207 : vec2<f32> = (x_204 + vec2<f32>(x_205.x, x_205.y));
    let x_208 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_207.x, x_207.y, x_208.z);

    continuing {
      let x_210 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_210 + 1i);
    }
  }
  let x_212 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_212 / x_213);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_226 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_226 < 0.5f);
  let x_228 : bool = u_xlatb21;
  if (x_228) {
    let x_231 : vec2<f32> = vs_TEXCOORD0;
    let x_235 : vec2<f32> = x_51.x_Vignette_Center;
    let x_237 : vec2<f32> = (x_231 + -(x_235));
    let x_238 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_238.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat1;
    let x_245 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_247 : vec2<f32> = (abs(vec2<f32>(x_240.y, x_240.x)) * vec2<f32>(x_245.x, x_245.x));
    let x_248 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_248.x, x_247.x, x_247.y, x_248.w);
    let x_251 : f32 = x_51.x_ScreenParams.x;
    let x_253 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_251 / x_253);
    let x_255 : f32 = u_xlat21;
    u_xlat21 = (x_255 + -1.0f);
    let x_258 : f32 = x_51.x_Vignette_Settings.w;
    let x_259 : f32 = u_xlat21;
    u_xlat21 = ((x_258 * x_259) + 1.0f);
    let x_262 : f32 = u_xlat21;
    let x_264 : f32 = u_xlat1.z;
    u_xlat1.x = (x_262 * x_264);
    let x_267 : vec4<f32> = u_xlat1;
    let x_268 : vec2<f32> = vec2<f32>(x_267.x, x_267.y);
    let x_269 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat1;
    let x_275 : vec2<f32> = clamp(vec2<f32>(x_271.x, x_271.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_276 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat1;
    let x_280 : vec2<f32> = log2(vec2<f32>(x_278.x, x_278.y));
    let x_281 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat1;
    let x_286 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_288 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_286.z, x_286.z));
    let x_289 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
    let x_291 : vec4<f32> = u_xlat1;
    let x_293 : vec2<f32> = exp2(vec2<f32>(x_291.x, x_291.y));
    let x_294 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
    let x_296 : vec4<f32> = u_xlat1;
    let x_298 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_296.x, x_296.y), vec2<f32>(x_298.x, x_298.y));
    let x_301 : f32 = u_xlat21;
    u_xlat21 = (-(x_301) + 1.0f);
    let x_304 : f32 = u_xlat21;
    u_xlat21 = max(x_304, 0.0f);
    let x_306 : f32 = u_xlat21;
    u_xlat21 = log2(x_306);
    let x_308 : f32 = u_xlat21;
    let x_310 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_308 * x_310);
    let x_312 : f32 = u_xlat21;
    u_xlat21 = exp2(x_312);
    let x_317 : vec3<f32> = x_51.x_Vignette_Color;
    let x_320 : vec3<f32> = (-(x_317) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : f32 = u_xlat21;
    let x_325 : vec4<f32> = u_xlat1;
    let x_329 : vec3<f32> = x_51.x_Vignette_Color;
    let x_330 : vec3<f32> = ((vec3<f32>(x_323, x_323, x_323) * vec3<f32>(x_325.x, x_325.y, x_325.z)) + x_329);
    let x_331 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat0;
    let x_335 : vec4<f32> = u_xlat1;
    let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_341 : f32 = u_xlat1.w;
    u_xlat1.x = (x_341 + -1.0f);
    let x_344 : f32 = u_xlat21;
    let x_346 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_344 * x_346) + 1.0f);
  } else {
    let x_356 : vec2<f32> = vs_TEXCOORD0;
    let x_357 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_356);
    u_xlat21 = x_357.w;
    let x_359 : f32 = u_xlat21;
    u_xlat1.x = (x_359 * 0.077399381f);
    let x_363 : f32 = u_xlat21;
    u_xlat8.x = (x_363 + 0.055f);
    let x_368 : f32 = u_xlat8.x;
    u_xlat8.x = (x_368 * 0.947867334f);
    let x_373 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_373), 1.1920929e-07f);
    let x_379 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_379);
    let x_383 : f32 = u_xlat8.x;
    u_xlat8.x = (x_383 * 2.400000095f);
    let x_388 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_388);
    let x_392 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_392);
    let x_394 : bool = u_xlatb21;
    if (x_394) {
      let x_399 : f32 = u_xlat1.x;
      x_395 = x_399;
    } else {
      let x_402 : f32 = u_xlat8.x;
      x_395 = x_402;
    }
    let x_403 : f32 = x_395;
    u_xlat21 = x_403;
    let x_405 : vec3<f32> = x_51.x_Vignette_Color;
    let x_407 : vec3<f32> = (-(x_405) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_408 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_410 : f32 = u_xlat21;
    let x_412 : vec4<f32> = u_xlat1;
    let x_416 : vec3<f32> = x_51.x_Vignette_Color;
    let x_417 : vec3<f32> = ((vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z)) + x_416);
    let x_418 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat0;
    let x_422 : vec4<f32> = u_xlat1;
    let x_425 : vec4<f32> = u_xlat0;
    let x_428 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.x, x_422.y, x_422.z)) + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
    let x_429 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_433 : f32 = x_51.x_Vignette_Opacity;
    let x_435 : vec4<f32> = u_xlat1;
    let x_438 : vec4<f32> = u_xlat0;
    let x_440 : vec3<f32> = ((vec3<f32>(x_433, x_433, x_433) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_444 : f32 = u_xlat1.w;
    u_xlat0.x = (x_444 + -1.0f);
    let x_447 : f32 = u_xlat21;
    let x_449 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_447 * x_449) + 1.0f);
  }
  let x_453 : vec4<f32> = u_xlat3;
  let x_456 : f32 = x_51.x_PostExposure;
  let x_458 : f32 = x_51.x_PostExposure;
  let x_460 : f32 = x_51.x_PostExposure;
  let x_462 : f32 = x_51.x_PostExposure;
  let x_463 : vec4<f32> = vec4<f32>(x_456, x_458, x_460, x_462);
  u_xlat0 = (x_453 * vec4<f32>(x_463.x, x_463.y, x_463.z, x_463.w));
  let x_470 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.z, x_470.x, x_470.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = log2(vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat1;
  let x_492 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = clamp(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_506.z, x_506.z, x_506.z));
  let x_510 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_510);
  let x_514 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(0.5f, 0.5f));
  let x_517 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_519 : vec3<f32> = u_xlat8;
  let x_522 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_525 : vec3<f32> = u_xlat2;
  let x_527 : vec2<f32> = ((vec2<f32>(x_519.y, x_519.z) * vec2<f32>(x_522.x, x_522.y)) + vec2<f32>(x_525.x, x_525.y));
  let x_528 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_527.x, x_527.y, x_528.w);
  let x_531 : f32 = u_xlat8.x;
  let x_533 : f32 = x_51.x_Lut2D_Params.y;
  let x_536 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_531 * x_533) + x_536);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_544.x, x_544.z));
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.z);
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_551;
  let x_554 : vec2<f32> = u_xlat16;
  let x_555 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_554 + vec2<f32>(x_555.x, x_555.z));
  let x_561 : vec2<f32> = u_xlat15;
  let x_562 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_561);
  u_xlat2 = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_565 : f32 = u_xlat1.x;
  let x_567 : f32 = x_51.x_Lut2D_Params.z;
  let x_570 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_565 * x_567) + -(x_570));
  let x_574 : vec4<f32> = u_xlat4;
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_574.x, x_574.y, x_574.z)) + x_577);
  let x_579 : vec4<f32> = u_xlat1;
  let x_581 : vec3<f32> = u_xlat8;
  let x_583 : vec4<f32> = u_xlat4;
  let x_585 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.x, x_579.x) * x_581) + vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_591 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_591);
  let x_593 : bool = u_xlatb1;
  if (x_593) {
    let x_596 : vec4<f32> = u_xlat0;
    let x_597 : vec3<f32> = vec3<f32>(x_596.x, x_596.y, x_596.z);
    let x_598 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
    let x_600 : vec4<f32> = u_xlat1;
    let x_604 : vec3<f32> = clamp(vec3<f32>(x_600.x, x_600.y, x_600.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_617 : vec4<f32> = u_xlat0;
  SV_Target0 = x_617;
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

