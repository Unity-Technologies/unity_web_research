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
  x_Lut2D_Params : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_574 : f32;
  var x_586 : f32;
  var x_598 : f32;
  var x_739 : f32;
  var x_751 : f32;
  var x_763 : f32;
  var x_857 : f32;
  var x_869 : f32;
  var x_881 : f32;
  var x_928 : f32;
  var x_941 : f32;
  var x_953 : f32;
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
    let x_141 : i32 = u_xlati_loop_1;
    let x_142 : i32 = u_xlati21;
    if ((x_141 < x_142)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_146);
    let x_150 : f32 = u_xlat6.x;
    u_xlat6.x = (x_150 + 0.5f);
    let x_154 : f32 = u_xlat6.x;
    let x_156 : f32 = u_xlat1.x;
    u_xlat2.x = (x_154 / x_156);
    let x_159 : vec3<f32> = u_xlat8;
    let x_160 : vec2<f32> = vec2<f32>(x_159.x, x_159.y);
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_167 : vec2<f32> = clamp(vec2<f32>(x_163.x, x_163.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_168 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
    let x_170 : vec4<f32> = u_xlat6;
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_173, x_173));
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
  let x_214 : vec4<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_214 / x_215);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = (vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_229 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_238 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_229.x, x_229.y, x_229.w, x_229.y)) * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + vec4<f32>(x_238.x, x_238.y, x_238.x, x_238.y));
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_241, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_245 * vec4<f32>(x_247, x_247, x_247, x_247));
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_255.x, x_255.y));
  u_xlat4 = x_257;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_261.z, x_261.w));
  u_xlat3 = x_263;
  let x_264 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_264 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_267);
  let x_269 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_276 : vec2<f32> = vs_TEXCOORD0;
  let x_277 : vec2<f32> = ((-(vec2<f32>(x_269.z, x_269.y)) * vec2<f32>(x_273.x, x_273.x)) + x_276);
  let x_278 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_280 : vec3<f32> = u_xlat2;
  let x_284 : vec2<f32> = clamp(vec2<f32>(x_280.x, x_280.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_285 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_284.x, x_284.y, x_285.z);
  let x_287 : vec3<f32> = u_xlat2;
  let x_290 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_292 : vec2<f32> = (vec2<f32>(x_287.x, x_287.y) * vec2<f32>(x_290, x_290));
  let x_293 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_292.x, x_292.y, x_293.z);
  let x_298 : vec3<f32> = u_xlat2;
  let x_300 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_298.x, x_298.y));
  u_xlat4 = x_300;
  let x_301 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_301 + x_302);
  let x_304 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_310 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_304.z, x_304.w, x_304.x, x_304.w) * vec4<f32>(x_307.x, x_307.x, x_307.x, x_307.x)) + vec4<f32>(x_310.x, x_310.y, x_310.x, x_310.y));
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_313, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat4 = (x_317 * vec4<f32>(x_319, x_319, x_319, x_319));
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_325.x, x_325.y));
  u_xlat5 = x_327;
  let x_328 : vec4<f32> = u_xlat5;
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_328 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_330);
  let x_332 : vec2<f32> = vs_TEXCOORD0;
  let x_333 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_332.x, x_332.y, x_333.z);
  let x_335 : vec3<f32> = u_xlat2;
  let x_339 : vec2<f32> = clamp(vec2<f32>(x_335.x, x_335.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_340 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_339.x, x_339.y, x_340.z);
  let x_342 : vec3<f32> = u_xlat2;
  let x_345 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_347 : vec2<f32> = (vec2<f32>(x_342.x, x_342.y) * vec2<f32>(x_345, x_345));
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_347.x, x_347.y, x_348.z);
  let x_353 : vec3<f32> = u_xlat2;
  let x_355 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_353.x, x_353.y));
  u_xlat5 = x_355;
  let x_356 : vec4<f32> = u_xlat5;
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_356 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_360);
  let x_365 : vec4<f32> = u_xlat4;
  let x_367 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_365.z, x_365.w));
  u_xlat4 = x_367;
  let x_368 : vec4<f32> = u_xlat4;
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_368 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_370);
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_378 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_372.z, x_372.y, x_372.w, x_372.y) * vec4<f32>(x_375.x, x_375.x, x_375.x, x_375.x)) + vec4<f32>(x_378.x, x_378.y, x_378.x, x_378.y));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_381, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_385 : vec4<f32> = u_xlat4;
  let x_387 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat4 = (x_385 * vec4<f32>(x_387, x_387, x_387, x_387));
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_393.x, x_393.y));
  u_xlat5 = x_395;
  let x_396 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_396 + x_397);
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_402.z, x_402.w));
  u_xlat4 = x_404;
  let x_405 : vec4<f32> = u_xlat4;
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_405 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_407);
  let x_409 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_415 : vec2<f32> = vs_TEXCOORD0;
  let x_416 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412.x, x_412.x)) + x_415);
  let x_417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec2<f32> = clamp(vec2<f32>(x_419.x, x_419.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_431 : vec2<f32> = (vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_429, x_429));
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_437.x, x_437.y));
  u_xlat0 = x_439;
  let x_440 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_440 + x_441);
  let x_443 : vec4<f32> = u_xlat0;
  let x_445 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_443 * vec4<f32>(x_445.y, x_445.y, x_445.y, x_445.y));
  let x_448 : vec2<f32> = vs_TEXCOORD0;
  let x_451 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_455 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_457 : vec2<f32> = ((x_448 * vec2<f32>(x_451.x, x_451.y)) + vec2<f32>(x_455.z, x_455.w));
  let x_458 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_457.x, x_457.y, x_458.z);
  let x_465 : vec3<f32> = u_xlat2;
  let x_467 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_465.x, x_465.y));
  let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_476 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat3;
  let x_481 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_481.z, x_481.z, x_481.z));
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_486 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = x_51.x_Bloom_Color;
  let x_494 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * x_493);
  let x_495 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat0.w;
  u_xlat5.w = (x_498 * 0.0625f);
  let x_501 : vec4<f32> = u_xlat1;
  let x_502 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_501 + x_502);
  let x_504 : vec4<f32> = u_xlat4;
  let x_506 : vec4<f32> = u_xlat3;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  u_xlat1.w = 0.0f;
  let x_512 : vec4<f32> = u_xlat0;
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_512 + x_513);
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_515, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_519 : vec4<f32> = u_xlat0;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.z, x_519.x, x_519.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = max(vec3<f32>(x_526.z, x_526.x, x_526.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = log2(vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat3;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_543 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat3;
  let x_547 : vec3<f32> = exp2(vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat3;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_558 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_565 : vec4<f32> = u_xlat0;
  let x_568 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_565.z, x_565.x, x_565.y, x_565.z));
  u_xlatb0 = vec3<bool>(x_568.x, x_568.y, x_568.z);
  let x_572 : bool = u_xlatb0.x;
  if (x_572) {
    let x_578 : f32 = u_xlat1.x;
    x_574 = x_578;
  } else {
    let x_581 : f32 = u_xlat3.x;
    x_574 = x_581;
  }
  let x_582 : f32 = x_574;
  u_xlat0.x = x_582;
  let x_585 : bool = u_xlatb0.y;
  if (x_585) {
    let x_590 : f32 = u_xlat1.y;
    x_586 = x_590;
  } else {
    let x_593 : f32 = u_xlat3.y;
    x_586 = x_593;
  }
  let x_594 : f32 = x_586;
  u_xlat0.y = x_594;
  let x_597 : bool = u_xlatb0.z;
  if (x_597) {
    let x_602 : f32 = u_xlat1.z;
    x_598 = x_602;
  } else {
    let x_605 : f32 = u_xlat3.z;
    x_598 = x_605;
  }
  let x_606 : f32 = x_598;
  u_xlat0.z = x_606;
  let x_608 : vec4<f32> = u_xlat0;
  let x_612 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_614 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_612.z, x_612.z, x_612.z));
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_618);
  let x_622 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_624 : vec2<f32> = (vec2<f32>(x_622.x, x_622.y) * vec2<f32>(0.5f, 0.5f));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_625.y, x_625.z, x_624.y);
  let x_627 : vec4<f32> = u_xlat1;
  let x_630 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec2<f32> = ((vec2<f32>(x_627.y, x_627.z) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.x, x_633.w));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_635.x, x_635.y, x_636.w);
  let x_639 : f32 = u_xlat7.x;
  let x_641 : f32 = x_51.x_Lut2D_Params.y;
  let x_644 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_639 * x_641) + x_644);
  let x_652 : vec4<f32> = u_xlat1;
  let x_654 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_652.x, x_652.z));
  let x_655 : vec3<f32> = vec3<f32>(x_654.x, x_654.y, x_654.z);
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_659;
  let x_661 : vec2<f32> = u_xlat16;
  let x_662 : vec4<f32> = u_xlat1;
  let x_664 : vec2<f32> = (x_661 + vec2<f32>(x_662.x, x_662.z));
  let x_665 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
  let x_670 : vec4<f32> = u_xlat1;
  let x_672 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_670.x, x_670.y));
  let x_673 : vec3<f32> = vec3<f32>(x_672.x, x_672.y, x_672.z);
  let x_674 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat0.x;
  let x_679 : f32 = x_51.x_Lut2D_Params.z;
  let x_682 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_677 * x_679) + -(x_682));
  let x_686 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat1;
  let x_691 : vec3<f32> = (-(vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat0;
  let x_696 : vec4<f32> = u_xlat1;
  let x_699 : vec4<f32> = u_xlat3;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.x, x_694.x) * vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_716 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_716 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_720 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_720), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_723);
  let x_725 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_725 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_729);
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.x));
  u_xlatb0 = vec3<bool>(x_735.x, x_735.y, x_735.z);
  let x_738 : bool = u_xlatb0.x;
  if (x_738) {
    let x_743 : f32 = u_xlat1.x;
    x_739 = x_743;
  } else {
    let x_746 : f32 = u_xlat2.x;
    x_739 = x_746;
  }
  let x_747 : f32 = x_739;
  u_xlat0.x = x_747;
  let x_750 : bool = u_xlatb0.y;
  if (x_750) {
    let x_755 : f32 = u_xlat1.y;
    x_751 = x_755;
  } else {
    let x_758 : f32 = u_xlat2.y;
    x_751 = x_758;
  }
  let x_759 : f32 = x_751;
  u_xlat0.y = x_759;
  let x_762 : bool = u_xlatb0.z;
  if (x_762) {
    let x_767 : f32 = u_xlat1.z;
    x_763 = x_767;
  } else {
    let x_770 : f32 = u_xlat2.z;
    x_763 = x_770;
  }
  let x_771 : f32 = x_763;
  u_xlat0.z = x_771;
  let x_773 : vec2<f32> = vs_TEXCOORD0;
  let x_775 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_779 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_781 : vec2<f32> = ((x_773 * vec2<f32>(x_775.x, x_775.y)) + vec2<f32>(x_779.z, x_779.w));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_789 : vec4<f32> = u_xlat1;
  let x_791 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_789.x, x_789.y));
  u_xlat1.x = x_791.w;
  let x_795 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_795 * 2.0f) + -1.0f);
  let x_800 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_800 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_806 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_806, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_810 * 2.0f) + -1.0f);
  let x_815 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_815)) + 1.0f);
  let x_821 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_821);
  let x_825 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_825) + 1.0f);
  let x_830 : f32 = u_xlat1.x;
  let x_832 : f32 = u_xlat8.x;
  u_xlat1.x = (x_830 * x_832);
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_838.x, x_838.y, x_838.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_842 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_842);
  let x_844 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_844 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_846 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_846);
  let x_848 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_848 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_851 : vec4<f32> = u_xlat0;
  let x_853 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.x));
  u_xlatb0 = vec3<bool>(x_853.x, x_853.y, x_853.z);
  let x_856 : bool = u_xlatb0.x;
  if (x_856) {
    let x_861 : f32 = u_xlat8.x;
    x_857 = x_861;
  } else {
    let x_864 : f32 = u_xlat2.x;
    x_857 = x_864;
  }
  let x_865 : f32 = x_857;
  u_xlat0.x = x_865;
  let x_868 : bool = u_xlatb0.y;
  if (x_868) {
    let x_873 : f32 = u_xlat8.y;
    x_869 = x_873;
  } else {
    let x_876 : f32 = u_xlat2.y;
    x_869 = x_876;
  }
  let x_877 : f32 = x_869;
  u_xlat0.y = x_877;
  let x_880 : bool = u_xlatb0.z;
  if (x_880) {
    let x_885 : f32 = u_xlat8.z;
    x_881 = x_885;
  } else {
    let x_888 : f32 = u_xlat2.z;
    x_881 = x_888;
  }
  let x_889 : f32 = x_881;
  u_xlat0.z = x_889;
  let x_891 : vec4<f32> = u_xlat1;
  let x_896 : vec4<f32> = u_xlat0;
  let x_898 : vec3<f32> = ((vec3<f32>(x_891.x, x_891.x, x_891.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat0;
  let x_903 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_904 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_909 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_909 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_911 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_911), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_914 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_914);
  let x_916 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_916 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_918 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_918);
  let x_920 : vec4<f32> = u_xlat0;
  let x_922 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_920.x, x_920.y, x_920.z, x_920.x));
  u_xlatb0 = vec3<bool>(x_922.x, x_922.y, x_922.z);
  let x_927 : bool = u_xlatb0.x;
  if (x_927) {
    let x_932 : f32 = u_xlat1.x;
    x_928 = x_932;
  } else {
    let x_935 : f32 = u_xlat2.x;
    x_928 = x_935;
  }
  let x_936 : f32 = x_928;
  SV_Target0.x = x_936;
  let x_940 : bool = u_xlatb0.y;
  if (x_940) {
    let x_945 : f32 = u_xlat1.y;
    x_941 = x_945;
  } else {
    let x_948 : f32 = u_xlat2.y;
    x_941 = x_948;
  }
  let x_949 : f32 = x_941;
  SV_Target0.y = x_949;
  let x_952 : bool = u_xlatb0.z;
  if (x_952) {
    let x_957 : f32 = u_xlat1.z;
    x_953 = x_957;
  } else {
    let x_960 : f32 = u_xlat2.z;
    x_953 = x_960;
  }
  let x_961 : f32 = x_953;
  SV_Target0.z = x_961;
  let x_964 : f32 = u_xlat0.w;
  SV_Target0.w = x_964;
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

