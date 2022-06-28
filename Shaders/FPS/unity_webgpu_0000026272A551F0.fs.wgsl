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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_387 : f32;
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
    let x_140 : i32 = u_xlati_loop_1;
    let x_141 : i32 = u_xlati21;
    if ((x_140 < x_141)) {
    } else {
      break;
    }
    let x_145 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_145);
    let x_149 : f32 = u_xlat6.x;
    u_xlat6.x = (x_149 + 0.5f);
    let x_153 : f32 = u_xlat6.x;
    let x_155 : f32 = u_xlat1.x;
    u_xlat2.x = (x_153 / x_155);
    let x_158 : vec3<f32> = u_xlat8;
    let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
    let x_160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat6;
    let x_166 : vec2<f32> = clamp(vec2<f32>(x_162.x, x_162.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_167 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_166.x, x_166.y, x_167.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat6;
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_173, x_173));
    let x_176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.x, x_183.y), 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec3<f32> = u_xlat2;
    let x_193 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_191.x, x_191.y), 0.0f);
    let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_198 : vec4<f32> = u_xlat3;
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_197 * x_198) + x_200);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_202 + x_203);
    let x_205 : vec2<f32> = u_xlat7;
    let x_206 : vec3<f32> = u_xlat8;
    let x_208 : vec2<f32> = (x_205 + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_208.x, x_208.y, x_209.z);

    continuing {
      let x_211 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_211 + 1i);
    }
  }
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_227 : f32 = x_51.x_Vignette_Mode;
  u_xlatb21 = (x_227 < 0.5f);
  let x_229 : bool = u_xlatb21;
  if (x_229) {
    let x_232 : vec2<f32> = vs_TEXCOORD0;
    let x_236 : vec2<f32> = x_51.x_Vignette_Center;
    let x_238 : vec2<f32> = (x_232 + -(x_236));
    let x_239 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
    let x_241 : vec4<f32> = u_xlat1;
    let x_246 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_248 : vec2<f32> = (abs(vec2<f32>(x_241.y, x_241.x)) * vec2<f32>(x_246.x, x_246.x));
    let x_249 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_249.w);
    let x_252 : f32 = x_51.x_ScreenParams.x;
    let x_254 : f32 = x_51.x_ScreenParams.y;
    u_xlat21 = (x_252 / x_254);
    let x_256 : f32 = u_xlat21;
    u_xlat21 = (x_256 + -1.0f);
    let x_259 : f32 = x_51.x_Vignette_Settings.w;
    let x_260 : f32 = u_xlat21;
    u_xlat21 = ((x_259 * x_260) + 1.0f);
    let x_263 : f32 = u_xlat21;
    let x_265 : f32 = u_xlat1.z;
    u_xlat1.x = (x_263 * x_265);
    let x_268 : vec4<f32> = u_xlat1;
    let x_269 : vec2<f32> = vec2<f32>(x_268.x, x_268.y);
    let x_270 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
    let x_272 : vec4<f32> = u_xlat1;
    let x_276 : vec2<f32> = clamp(vec2<f32>(x_272.x, x_272.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_277 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat1;
    let x_281 : vec2<f32> = log2(vec2<f32>(x_279.x, x_279.y));
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat1;
    let x_287 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_289 : vec2<f32> = (vec2<f32>(x_284.x, x_284.y) * vec2<f32>(x_287.z, x_287.z));
    let x_290 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_290.z, x_290.w);
    let x_292 : vec4<f32> = u_xlat1;
    let x_294 : vec2<f32> = exp2(vec2<f32>(x_292.x, x_292.y));
    let x_295 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat1;
    let x_299 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_297.x, x_297.y), vec2<f32>(x_299.x, x_299.y));
    let x_302 : f32 = u_xlat21;
    u_xlat21 = (-(x_302) + 1.0f);
    let x_305 : f32 = u_xlat21;
    u_xlat21 = max(x_305, 0.0f);
    let x_307 : f32 = u_xlat21;
    u_xlat21 = log2(x_307);
    let x_309 : f32 = u_xlat21;
    let x_311 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat21 = (x_309 * x_311);
    let x_313 : f32 = u_xlat21;
    u_xlat21 = exp2(x_313);
    let x_318 : vec3<f32> = x_51.x_Vignette_Color;
    let x_321 : vec3<f32> = (-(x_318) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_322 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_324 : f32 = u_xlat21;
    let x_326 : vec4<f32> = u_xlat1;
    let x_330 : vec3<f32> = x_51.x_Vignette_Color;
    let x_331 : vec3<f32> = ((vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + x_330);
    let x_332 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_334 : vec4<f32> = u_xlat0;
    let x_336 : vec4<f32> = u_xlat1;
    let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z));
    let x_339 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_342 : f32 = u_xlat1.w;
    u_xlat2.x = (x_342 + -1.0f);
    let x_345 : f32 = u_xlat21;
    let x_347 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_345 * x_347) + 1.0f);
  } else {
    let x_357 : vec2<f32> = vs_TEXCOORD0;
    let x_358 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_357);
    u_xlat21 = x_358.w;
    let x_360 : f32 = u_xlat21;
    u_xlat2.x = (x_360 * 0.077399381f);
    let x_365 : f32 = u_xlat21;
    u_xlat9 = (x_365 + 0.055f);
    let x_368 : f32 = u_xlat9;
    u_xlat9 = (x_368 * 0.947867334f);
    let x_371 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_371), 1.1920929e-07f);
    let x_375 : f32 = u_xlat9;
    u_xlat9 = log2(x_375);
    let x_377 : f32 = u_xlat9;
    u_xlat9 = (x_377 * 2.400000095f);
    let x_380 : f32 = u_xlat9;
    u_xlat9 = exp2(x_380);
    let x_383 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_383);
    let x_385 : bool = u_xlatb21;
    if (x_385) {
      let x_391 : f32 = u_xlat2.x;
      x_387 = x_391;
    } else {
      let x_393 : f32 = u_xlat9;
      x_387 = x_393;
    }
    let x_394 : f32 = x_387;
    u_xlat21 = x_394;
    let x_396 : vec3<f32> = x_51.x_Vignette_Color;
    let x_398 : vec3<f32> = (-(x_396) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_399 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
    let x_401 : f32 = u_xlat21;
    let x_403 : vec4<f32> = u_xlat4;
    let x_407 : vec3<f32> = x_51.x_Vignette_Color;
    let x_408 : vec3<f32> = ((vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z)) + x_407);
    let x_409 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat0;
    let x_413 : vec4<f32> = u_xlat4;
    let x_416 : vec4<f32> = u_xlat0;
    let x_419 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + -(vec3<f32>(x_416.x, x_416.y, x_416.z)));
    let x_420 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_424 : f32 = x_51.x_Vignette_Opacity;
    let x_426 : vec4<f32> = u_xlat4;
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec3<f32> = ((vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_435 : f32 = u_xlat1.w;
    u_xlat0.x = (x_435 + -1.0f);
    let x_438 : f32 = u_xlat21;
    let x_440 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_438 * x_440) + 1.0f);
  }
  let x_445 : vec2<f32> = vs_TEXCOORD1;
  let x_448 : vec4<f32> = x_51.x_Grain_Params2;
  let x_452 : vec4<f32> = x_51.x_Grain_Params2;
  let x_454 : vec2<f32> = ((x_445 * vec2<f32>(x_448.x, x_448.y)) + vec2<f32>(x_452.z, x_452.w));
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_462 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_462.x, x_462.y));
  let x_465 : vec3<f32> = vec3<f32>(x_464.x, x_464.y, x_464.z);
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_469 : vec3<f32> = vec3<f32>(x_468.x, x_468.y, x_468.z);
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat4;
  let x_476 : vec3<f32> = clamp(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_486 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_486);
  let x_490 : f32 = x_51.x_Grain_Params1.x;
  let x_491 : f32 = u_xlat21;
  u_xlat21 = ((x_490 * -(x_491)) + 1.0f);
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat0;
  let x_505 : f32 = x_51.x_Grain_Params1.y;
  let x_507 : f32 = x_51.x_Grain_Params1.y;
  let x_509 : f32 = x_51.x_Grain_Params1.y;
  let x_511 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : f32 = u_xlat21;
  let x_519 : vec4<f32> = u_xlat1;
  let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_516, x_516, x_516)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat3;
  let x_527 : f32 = x_51.x_PostExposure;
  let x_529 : f32 = x_51.x_PostExposure;
  let x_531 : f32 = x_51.x_PostExposure;
  let x_533 : f32 = x_51.x_PostExposure;
  let x_534 : vec4<f32> = vec4<f32>(x_527, x_529, x_531, x_533);
  u_xlat0 = (x_524 * vec4<f32>(x_534.x, x_534.y, x_534.z, x_534.w));
  let x_541 : vec4<f32> = u_xlat0;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.x, x_541.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec3<f32> = log2(vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat1;
  let x_563 : vec3<f32> = ((vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat1;
  let x_570 : vec3<f32> = clamp(vec3<f32>(x_566.x, x_566.y, x_566.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_571 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat1;
  let x_577 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_577.z, x_577.z, x_577.z));
  let x_581 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_581);
  let x_585 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_587 : vec2<f32> = (vec2<f32>(x_585.x, x_585.y) * vec2<f32>(0.5f, 0.5f));
  let x_588 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_587.x, x_587.y, x_588.z);
  let x_590 : vec3<f32> = u_xlat8;
  let x_593 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_596 : vec3<f32> = u_xlat2;
  let x_598 : vec2<f32> = ((vec2<f32>(x_590.y, x_590.z) * vec2<f32>(x_593.x, x_593.y)) + vec2<f32>(x_596.x, x_596.y));
  let x_599 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_598.x, x_598.y, x_599.w);
  let x_602 : f32 = u_xlat8.x;
  let x_604 : f32 = x_51.x_Lut2D_Params.y;
  let x_607 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_602 * x_604) + x_607);
  let x_615 : vec4<f32> = u_xlat3;
  let x_617 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_615.x, x_615.z));
  let x_618 : vec3<f32> = vec3<f32>(x_617.x, x_617.y, x_617.z);
  let x_619 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_622;
  let x_625 : vec2<f32> = u_xlat16;
  let x_626 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_625 + vec2<f32>(x_626.x, x_626.z));
  let x_632 : vec2<f32> = u_xlat15;
  let x_633 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_632);
  u_xlat2 = vec3<f32>(x_633.x, x_633.y, x_633.z);
  let x_636 : f32 = u_xlat1.x;
  let x_638 : f32 = x_51.x_Lut2D_Params.z;
  let x_641 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_636 * x_638) + -(x_641));
  let x_645 : vec4<f32> = u_xlat4;
  let x_648 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_645.x, x_645.y, x_645.z)) + x_648);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec3<f32> = u_xlat8;
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec3<f32> = ((vec3<f32>(x_650.x, x_650.x, x_650.x) * x_652) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_662 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_662);
  let x_664 : bool = u_xlatb1;
  if (x_664) {
    let x_667 : vec4<f32> = u_xlat0;
    let x_668 : vec3<f32> = vec3<f32>(x_667.x, x_667.y, x_667.z);
    let x_669 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
    let x_671 : vec4<f32> = u_xlat1;
    let x_675 : vec3<f32> = clamp(vec3<f32>(x_671.x, x_671.y, x_671.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_676 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_684 : vec4<f32> = u_xlat0;
  SV_Target0 = x_684;
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

