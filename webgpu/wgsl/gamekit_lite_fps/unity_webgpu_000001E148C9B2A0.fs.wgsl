struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
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
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_161 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec4<f32> = u_xlat2;
    let x_179 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_177.x, x_177.y), 0.0f);
    let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_183 * x_184) + x_186);
    let x_188 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_188 + x_189);
    let x_191 : vec2<f32> = u_xlat7;
    let x_192 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_191 + x_192);

    continuing {
      let x_194 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_194 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_208.x, x_208.y, x_208.x, x_208.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_214 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_214 * 0.5f);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat2;
  let x_222 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_217.x, x_217.y, x_217.z, x_217.y) * vec4<f32>(x_219.x, x_219.x, x_219.x, x_219.x)) + vec4<f32>(x_222.x, x_222.y, x_222.x, x_222.y));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_225, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_229 * vec4<f32>(x_231, x_231, x_231, x_231));
  let x_239 : vec4<f32> = u_xlat3;
  let x_241 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_239.x, x_239.y));
  u_xlat4 = x_241;
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.z, x_245.w));
  u_xlat3 = x_247;
  let x_248 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_248 + x_249);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = u_xlat2;
  let x_256 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_251.x, x_251.w, x_251.z, x_251.w) * vec4<f32>(x_253.x, x_253.x, x_253.x, x_253.x)) + vec4<f32>(x_256.x, x_256.y, x_256.x, x_256.y));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_259, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_263 * vec4<f32>(x_265, x_265, x_265, x_265));
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_271.x, x_271.y));
  u_xlat2 = x_273;
  let x_274 : vec4<f32> = u_xlat2;
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_274 + x_275);
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_280.z, x_280.w));
  u_xlat0 = x_282;
  let x_283 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_283 + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_286 * vec4<f32>(x_289.y, x_289.y, x_289.y, x_289.y));
  let x_292 : vec2<f32> = vs_TEXCOORD0;
  let x_294 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_298 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_300 : vec2<f32> = ((x_292 * vec2<f32>(x_294.x, x_294.y)) + vec2<f32>(x_298.z, x_298.w));
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = vec3<f32>(x_310.x, x_310.y, x_310.z);
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat2;
  let x_324 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_324.z, x_324.z, x_324.z));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_329 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_332 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = x_51.x_Bloom_Color;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * x_336);
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat0.w;
  u_xlat4.w = (x_341 * 0.25f);
  let x_344 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_344 + x_345);
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  u_xlat1.w = 0.0f;
  let x_355 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_355 + x_356);
  let x_358 : vec4<f32> = u_xlat0;
  let x_362 : f32 = x_51.x_PostExposure;
  let x_364 : f32 = x_51.x_PostExposure;
  let x_366 : f32 = x_51.x_PostExposure;
  let x_368 : f32 = x_51.x_PostExposure;
  let x_369 : vec4<f32> = vec4<f32>(x_362, x_364, x_366, x_368);
  u_xlat0 = (vec4<f32>(x_358.w, x_358.x, x_358.y, x_358.z) * vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.w));
  let x_376 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.y, x_376.z, x_376.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = log2(vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = clamp(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat1;
  let x_413 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_415 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_413.y, x_413.y, x_413.y));
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_420 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_420 * 0.5f);
  let x_422 : vec4<f32> = u_xlat1;
  let x_425 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_428 : f32 = u_xlat22;
  let x_430 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_425.x, x_425.x, x_425.x)) + vec3<f32>(x_428, x_428, x_428));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_441 : vec4<f32> = u_xlat1;
  let x_443 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec3<f32> = vec3<f32>(x_443.x, x_443.y, x_443.z);
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_444.x, x_444.y, x_444.z);
  let x_451 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_451);
  let x_453 : bool = u_xlatb1;
  if (x_453) {
    let x_456 : vec4<f32> = u_xlat0;
    let x_457 : vec3<f32> = vec3<f32>(x_456.y, x_456.z, x_456.w);
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat1;
    let x_464 : vec3<f32> = clamp(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_465 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_467 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_477 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_477.y, x_477.z, x_477.w, x_477.x);
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

