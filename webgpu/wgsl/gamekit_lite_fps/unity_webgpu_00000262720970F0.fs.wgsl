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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_664 : f32;
  var x_676 : f32;
  var x_688 : f32;
  var x_834 : f32;
  var x_846 : f32;
  var x_858 : f32;
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
  let x_515 : vec2<f32> = vs_TEXCOORD1;
  let x_518 : vec4<f32> = x_51.x_Grain_Params2;
  let x_522 : vec4<f32> = x_51.x_Grain_Params2;
  let x_524 : vec2<f32> = ((x_515 * vec2<f32>(x_518.x, x_518.y)) + vec2<f32>(x_522.z, x_522.w));
  let x_525 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_532.x, x_532.y));
  let x_535 : vec3<f32> = vec3<f32>(x_534.x, x_534.y, x_534.z);
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = vec3<f32>(x_538.x, x_538.y, x_538.z);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_546 : vec3<f32> = clamp(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_557 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_557);
  let x_561 : f32 = x_51.x_Grain_Params1.x;
  let x_562 : f32 = u_xlat22;
  u_xlat22 = ((x_561 * -(x_562)) + 1.0f);
  let x_566 : vec4<f32> = u_xlat0;
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat1;
  let x_576 : f32 = x_51.x_Grain_Params1.y;
  let x_578 : f32 = x_51.x_Grain_Params1.y;
  let x_580 : f32 = x_51.x_Grain_Params1.y;
  let x_582 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_576, x_578, x_580));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : f32 = u_xlat22;
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = ((vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(x_587, x_587, x_587)) + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat1;
  let x_599 : vec3<f32> = clamp(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat0.w;
  u_xlat0.w = x_603;
  let x_606 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_606, 0.0f, 1.0f);
  let x_609 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = (vec3<f32>(x_609.z, x_609.x, x_609.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat1;
  let x_620 : vec3<f32> = max(vec3<f32>(x_616.z, x_616.x, x_616.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec3<f32> = log2(vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat4;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = exp2(vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat4;
  let x_647 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_655 : vec4<f32> = u_xlat1;
  let x_658 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_655.z, x_655.x, x_655.y, x_655.z));
  u_xlatb1 = vec3<bool>(x_658.x, x_658.y, x_658.z);
  let x_662 : bool = u_xlatb1.x;
  if (x_662) {
    let x_668 : f32 = u_xlat3.x;
    x_664 = x_668;
  } else {
    let x_671 : f32 = u_xlat4.x;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat1.x = x_672;
  let x_675 : bool = u_xlatb1.y;
  if (x_675) {
    let x_680 : f32 = u_xlat3.y;
    x_676 = x_680;
  } else {
    let x_683 : f32 = u_xlat4.y;
    x_676 = x_683;
  }
  let x_684 : f32 = x_676;
  u_xlat1.y = x_684;
  let x_687 : bool = u_xlatb1.z;
  if (x_687) {
    let x_692 : f32 = u_xlat3.z;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat4.z;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat1.z = x_696;
  let x_698 : vec4<f32> = u_xlat1;
  let x_702 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_702.z, x_702.z, x_702.z));
  let x_706 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_706);
  let x_710 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_712 : vec2<f32> = (vec2<f32>(x_710.x, x_710.y) * vec2<f32>(0.5f, 0.5f));
  let x_713 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_712.x, x_712.y, x_713.z);
  let x_715 : vec3<f32> = u_xlat8;
  let x_718 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_721 : vec3<f32> = u_xlat2;
  let x_723 : vec2<f32> = ((vec2<f32>(x_715.y, x_715.z) * vec2<f32>(x_718.x, x_718.y)) + vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_724.x, x_723.x, x_723.y, x_724.w);
  let x_727 : f32 = u_xlat8.x;
  let x_729 : f32 = x_51.x_Lut2D_Params.y;
  let x_732 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_727 * x_729) + x_732);
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_740.x, x_740.z));
  let x_743 : vec3<f32> = vec3<f32>(x_742.x, x_742.y, x_742.z);
  let x_744 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_747 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_747;
  let x_750 : vec2<f32> = u_xlat16;
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_750 + vec2<f32>(x_751.x, x_751.z));
  let x_757 : vec2<f32> = u_xlat15;
  let x_758 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_757);
  u_xlat2 = vec3<f32>(x_758.x, x_758.y, x_758.z);
  let x_761 : f32 = u_xlat1.x;
  let x_763 : f32 = x_51.x_Lut2D_Params.z;
  let x_766 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_761 * x_763) + -(x_766));
  let x_770 : vec4<f32> = u_xlat4;
  let x_773 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_770.x, x_770.y, x_770.z)) + x_773);
  let x_775 : vec4<f32> = u_xlat1;
  let x_777 : vec3<f32> = u_xlat8;
  let x_779 : vec4<f32> = u_xlat4;
  let x_781 : vec3<f32> = ((vec3<f32>(x_775.x, x_775.x, x_775.x) * x_777) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_789 : vec4<f32> = u_xlat1;
  let x_793 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat3;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_801 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat3;
  let x_806 : vec3<f32> = max(abs(vec3<f32>(x_803.x, x_803.y, x_803.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_807 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat3;
  let x_811 : vec3<f32> = log2(vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat3;
  let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_819 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat3;
  let x_823 : vec3<f32> = exp2(vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_828.x, x_828.y, x_828.z, x_828.x));
  u_xlatb1 = vec3<bool>(x_830.x, x_830.y, x_830.z);
  let x_833 : bool = u_xlatb1.x;
  if (x_833) {
    let x_838 : f32 = u_xlat2.x;
    x_834 = x_838;
  } else {
    let x_841 : f32 = u_xlat3.x;
    x_834 = x_841;
  }
  let x_842 : f32 = x_834;
  u_xlat0.x = x_842;
  let x_845 : bool = u_xlatb1.y;
  if (x_845) {
    let x_850 : f32 = u_xlat2.y;
    x_846 = x_850;
  } else {
    let x_853 : f32 = u_xlat3.y;
    x_846 = x_853;
  }
  let x_854 : f32 = x_846;
  u_xlat0.y = x_854;
  let x_857 : bool = u_xlatb1.z;
  if (x_857) {
    let x_862 : f32 = u_xlat2.z;
    x_858 = x_862;
  } else {
    let x_865 : f32 = u_xlat3.z;
    x_858 = x_865;
  }
  let x_866 : f32 = x_858;
  u_xlat0.z = x_866;
  let x_870 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_870);
  let x_874 : bool = u_xlatb1.x;
  if (x_874) {
    let x_877 : vec4<f32> = u_xlat0;
    let x_878 : vec3<f32> = vec3<f32>(x_877.x, x_877.y, x_877.z);
    let x_879 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
    let x_881 : vec4<f32> = u_xlat1;
    let x_885 : vec3<f32> = clamp(vec3<f32>(x_881.x, x_881.y, x_881.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_886 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    let x_888 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_894 : vec4<f32> = u_xlat0;
  SV_Target0 = x_894;
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

