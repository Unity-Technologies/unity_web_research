struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_480 : f32;
  var x_492 : f32;
  var x_504 : f32;
  var x_578 : f32;
  var x_591 : f32;
  var x_603 : f32;
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  let x_129 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_138 : i32 = u_xlati_loop_1;
    let x_139 : i32 = u_xlati21;
    if ((x_138 < x_139)) {
    } else {
      break;
    }
    let x_143 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_143);
    let x_147 : f32 = u_xlat16.x;
    u_xlat16.x = (x_147 + 0.5f);
    let x_151 : f32 = u_xlat16.x;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_156 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_156.x, x_156.y);
    let x_158 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_158, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_162 : vec2<f32> = u_xlat16;
    let x_164 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_162 * vec2<f32>(x_164, x_164));
    let x_173 : vec2<f32> = u_xlat16;
    let x_174 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_173, 0.0f);
    u_xlat6 = x_174;
    let x_180 : vec4<f32> = u_xlat2;
    let x_182 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_180.x, x_180.y), 0.0f);
    let x_183 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
    let x_184 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_186 * x_187) + x_189);
    let x_191 : vec4<f32> = u_xlat3;
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_191 + x_192);
    let x_194 : vec2<f32> = u_xlat7;
    let x_195 : vec3<f32> = u_xlat8;
    let x_197 : vec2<f32> = (x_194 + vec2<f32>(x_195.x, x_195.y));
    let x_198 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_197.x, x_197.y, x_198.z);

    continuing {
      let x_200 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_200 + 1i);
    }
  }
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_203 / x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_220 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_220 * 0.5f);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = u_xlat2;
  let x_228 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.y) * vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x)) + vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_235 * vec4<f32>(x_237, x_237, x_237, x_237));
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.x, x_245.y));
  u_xlat4 = x_247;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_251.z, x_251.w));
  u_xlat3 = x_253;
  let x_254 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_254 + x_255);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_257.x, x_257.w, x_257.z, x_257.w) * vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x)) + vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_265, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_269 * vec4<f32>(x_271, x_271, x_271, x_271));
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_277.x, x_277.y));
  u_xlat2 = x_279;
  let x_280 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_280 + x_281);
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_286.z, x_286.w));
  u_xlat0 = x_288;
  let x_289 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_289 + x_290);
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_292 * vec4<f32>(x_295.y, x_295.y, x_295.y, x_295.y));
  let x_298 : vec2<f32> = vs_TEXCOORD0;
  let x_301 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_305 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_307 : vec2<f32> = ((x_298 * vec2<f32>(x_301.x, x_301.y)) + vec2<f32>(x_305.z, x_305.w));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_315.x, x_315.y));
  let x_318 : vec3<f32> = vec3<f32>(x_317.x, x_317.y, x_317.z);
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_331.z, x_331.z, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_336 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = x_51.x_Bloom_Color;
  let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * x_343);
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat0.w;
  u_xlat4.w = (x_348 * 0.25f);
  let x_351 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_351 + x_352);
  let x_354 : vec4<f32> = u_xlat3;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  u_xlat1.w = 0.0f;
  let x_362 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_362 + x_363);
  let x_365 : vec2<f32> = vs_TEXCOORD0;
  let x_367 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_371 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_373 : vec2<f32> = ((x_365 * vec2<f32>(x_367.x, x_367.y)) + vec2<f32>(x_371.z, x_371.w));
  let x_374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_381.x, x_381.y));
  u_xlat1.x = x_383.w;
  let x_387 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_387 * 2.0f) + -1.0f);
  let x_392 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_392 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_398 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_398, 0.0f, 1.0f);
  let x_402 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_402 * 2.0f) + -1.0f);
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_407)) + 1.0f);
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_413);
  let x_417 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_417) + 1.0f);
  let x_422 : f32 = u_xlat1.x;
  let x_424 : f32 = u_xlat8.x;
  u_xlat1.x = (x_422 * x_424);
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_432 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = max(abs(vec3<f32>(x_432.x, x_432.y, x_432.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat2;
  let x_442 : vec3<f32> = log2(vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat2;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = exp2(vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = ((vec3<f32>(x_457.x, x_457.y, x_457.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_472 : vec4<f32> = u_xlat0;
  let x_475 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.x));
  u_xlatb0 = vec3<bool>(x_475.x, x_475.y, x_475.z);
  let x_479 : bool = u_xlatb0.x;
  if (x_479) {
    let x_484 : f32 = u_xlat8.x;
    x_480 = x_484;
  } else {
    let x_487 : f32 = u_xlat2.x;
    x_480 = x_487;
  }
  let x_488 : f32 = x_480;
  u_xlat0.x = x_488;
  let x_491 : bool = u_xlatb0.y;
  if (x_491) {
    let x_496 : f32 = u_xlat8.y;
    x_492 = x_496;
  } else {
    let x_499 : f32 = u_xlat2.y;
    x_492 = x_499;
  }
  let x_500 : f32 = x_492;
  u_xlat0.y = x_500;
  let x_503 : bool = u_xlatb0.z;
  if (x_503) {
    let x_508 : f32 = u_xlat8.z;
    x_504 = x_508;
  } else {
    let x_511 : f32 = u_xlat2.z;
    x_504 = x_511;
  }
  let x_512 : f32 = x_504;
  u_xlat0.z = x_512;
  let x_514 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.x, x_514.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat0;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_536 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat2;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat2;
  let x_548 : vec3<f32> = max(abs(vec3<f32>(x_545.x, x_545.y, x_545.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat2;
  let x_553 : vec3<f32> = log2(vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat2;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = exp2(vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = u_xlat0;
  let x_572 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_570.x, x_570.y, x_570.z, x_570.x));
  u_xlatb0 = vec3<bool>(x_572.x, x_572.y, x_572.z);
  let x_577 : bool = u_xlatb0.x;
  if (x_577) {
    let x_582 : f32 = u_xlat1.x;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.x;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  SV_Target0.x = x_586;
  let x_590 : bool = u_xlatb0.y;
  if (x_590) {
    let x_595 : f32 = u_xlat1.y;
    x_591 = x_595;
  } else {
    let x_598 : f32 = u_xlat2.y;
    x_591 = x_598;
  }
  let x_599 : f32 = x_591;
  SV_Target0.y = x_599;
  let x_602 : bool = u_xlatb0.z;
  if (x_602) {
    let x_607 : f32 = u_xlat1.z;
    x_603 = x_607;
  } else {
    let x_610 : f32 = u_xlat2.z;
    x_603 = x_610;
  }
  let x_611 : f32 = x_603;
  SV_Target0.z = x_611;
  let x_614 : f32 = u_xlat0.w;
  SV_Target0.w = x_614;
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

