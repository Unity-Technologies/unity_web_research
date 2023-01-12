struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

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
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
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
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
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
    let x_172 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_174 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_172, x_172));
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
  let x_223 : vec2<f32> = vs_TEXCOORD1;
  let x_226 : vec4<f32> = x_51.x_Grain_Params2;
  let x_230 : vec4<f32> = x_51.x_Grain_Params2;
  let x_232 : vec2<f32> = ((x_223 * vec2<f32>(x_226.x, x_226.y)) + vec2<f32>(x_230.z, x_230.w));
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_240 : vec3<f32> = u_xlat2;
  let x_242 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = vec3<f32>(x_242.x, x_242.y, x_242.z);
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_247 : vec3<f32> = vec3<f32>(x_246.x, x_246.y, x_246.z);
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = clamp(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_264 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_264);
  let x_268 : f32 = x_51.x_Grain_Params1.x;
  let x_269 : f32 = u_xlat21;
  u_xlat21 = ((x_268 * -(x_269)) + 1.0f);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat3;
  let x_283 : f32 = x_51.x_Grain_Params1.y;
  let x_285 : f32 = x_51.x_Grain_Params1.y;
  let x_287 : f32 = x_51.x_Grain_Params1.y;
  let x_289 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_283, x_285, x_287));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : f32 = u_xlat21;
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294, x_294, x_294)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : f32 = x_51.x_PostExposure;
  let x_307 : f32 = x_51.x_PostExposure;
  let x_309 : f32 = x_51.x_PostExposure;
  let x_311 : f32 = x_51.x_PostExposure;
  let x_312 : vec4<f32> = vec4<f32>(x_305, x_307, x_309, x_311);
  u_xlat0 = (x_302 * vec4<f32>(x_312.x, x_312.y, x_312.z, x_312.w));
  let x_319 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.z, x_319.x, x_319.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = log2(vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_348 : vec3<f32> = clamp(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_355.z, x_355.z, x_355.z));
  let x_359 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_359);
  let x_363 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_365 : vec2<f32> = (vec2<f32>(x_363.x, x_363.y) * vec2<f32>(0.5f, 0.5f));
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_368 : vec3<f32> = u_xlat8;
  let x_371 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_374 : vec3<f32> = u_xlat2;
  let x_376 : vec2<f32> = ((vec2<f32>(x_368.y, x_368.z) * vec2<f32>(x_371.x, x_371.y)) + vec2<f32>(x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_377.w);
  let x_380 : f32 = u_xlat8.x;
  let x_382 : f32 = x_51.x_Lut2D_Params.y;
  let x_385 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_380 * x_382) + x_385);
  let x_393 : vec4<f32> = u_xlat3;
  let x_395 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_393.x, x_393.z));
  let x_396 : vec3<f32> = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_400;
  let x_403 : vec2<f32> = u_xlat16;
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_403 + vec2<f32>(x_404.x, x_404.z));
  let x_410 : vec2<f32> = u_xlat15;
  let x_411 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_410);
  u_xlat2 = vec3<f32>(x_411.x, x_411.y, x_411.z);
  let x_414 : f32 = u_xlat1.x;
  let x_416 : f32 = x_51.x_Lut2D_Params.z;
  let x_419 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_414 * x_416) + -(x_419));
  let x_423 : vec4<f32> = u_xlat4;
  let x_426 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_423.x, x_423.y, x_423.z)) + x_426);
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec3<f32> = u_xlat8;
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.x, x_428.x) * x_430) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_441 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_441);
  let x_443 : bool = u_xlatb1;
  if (x_443) {
    let x_446 : vec4<f32> = u_xlat0;
    let x_447 : vec3<f32> = vec3<f32>(x_446.x, x_446.y, x_446.z);
    let x_448 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_450 : vec4<f32> = u_xlat1;
    let x_454 : vec3<f32> = clamp(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_455 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    let x_457 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_457.x, x_457.y, x_457.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_463 : vec4<f32> = u_xlat0;
  SV_Target0 = x_463;
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

