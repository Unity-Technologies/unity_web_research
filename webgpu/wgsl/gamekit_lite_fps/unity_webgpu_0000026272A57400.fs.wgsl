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
  x_Lut2D_Params : vec3<f32>,
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

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
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
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
  let x_450 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_454 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_456 : vec2<f32> = ((x_448 * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_454.z, x_454.w));
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_456.x, x_456.y, x_457.z);
  let x_464 : vec3<f32> = u_xlat2;
  let x_466 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_464.x, x_464.y));
  let x_467 : vec3<f32> = vec3<f32>(x_466.x, x_466.y, x_466.z);
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat3;
  let x_480 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_482 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_480.z, x_480.z, x_480.z));
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_485 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_488 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = x_51.x_Bloom_Color;
  let x_493 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) * x_492);
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : f32 = u_xlat0.w;
  u_xlat5.w = (x_497 * 0.0625f);
  let x_500 : vec4<f32> = u_xlat1;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_500 + x_501);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = u_xlat3;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  u_xlat1.w = 0.0f;
  let x_511 : vec4<f32> = u_xlat0;
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_511 + x_512);
  let x_514 : vec4<f32> = u_xlat0;
  let x_517 : f32 = x_51.x_PostExposure;
  let x_519 : f32 = x_51.x_PostExposure;
  let x_521 : f32 = x_51.x_PostExposure;
  let x_523 : f32 = x_51.x_PostExposure;
  let x_524 : vec4<f32> = vec4<f32>(x_517, x_519, x_521, x_523);
  u_xlat0 = (x_514 * vec4<f32>(x_524.x, x_524.y, x_524.z, x_524.w));
  let x_531 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.z, x_531.x, x_531.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec3<f32> = log2(vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat1;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat1;
  let x_560 : vec3<f32> = clamp(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_561 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat1;
  let x_567 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_567.z, x_567.z, x_567.z));
  let x_571 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_571);
  let x_575 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_577 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.5f, 0.5f));
  let x_578 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_577.x, x_577.y, x_578.z);
  let x_580 : vec3<f32> = u_xlat8;
  let x_583 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_586 : vec3<f32> = u_xlat2;
  let x_588 : vec2<f32> = ((vec2<f32>(x_580.y, x_580.z) * vec2<f32>(x_583.x, x_583.y)) + vec2<f32>(x_586.x, x_586.y));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_588.x, x_588.y, x_589.w);
  let x_592 : f32 = u_xlat8.x;
  let x_594 : f32 = x_51.x_Lut2D_Params.y;
  let x_597 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_592 * x_594) + x_597);
  let x_605 : vec4<f32> = u_xlat3;
  let x_607 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_605.x, x_605.z));
  let x_608 : vec3<f32> = vec3<f32>(x_607.x, x_607.y, x_607.z);
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_612;
  let x_615 : vec2<f32> = u_xlat16;
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_615 + vec2<f32>(x_616.x, x_616.z));
  let x_622 : vec2<f32> = u_xlat15;
  let x_623 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_622);
  u_xlat2 = vec3<f32>(x_623.x, x_623.y, x_623.z);
  let x_626 : f32 = u_xlat1.x;
  let x_628 : f32 = x_51.x_Lut2D_Params.z;
  let x_631 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_626 * x_628) + -(x_631));
  let x_635 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + x_638);
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec3<f32> = u_xlat8;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.x, x_640.x) * x_642) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_653 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_653);
  let x_655 : bool = u_xlatb1;
  if (x_655) {
    let x_658 : vec4<f32> = u_xlat0;
    let x_659 : vec3<f32> = vec3<f32>(x_658.x, x_658.y, x_658.z);
    let x_660 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat1;
    let x_666 : vec3<f32> = clamp(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_667 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_669 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_679 : vec4<f32> = u_xlat0;
  SV_Target0 = x_679;
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

