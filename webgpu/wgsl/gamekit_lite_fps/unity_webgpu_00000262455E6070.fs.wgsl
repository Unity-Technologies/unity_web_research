struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_691 : f32;
  var x_986 : f32;
  var x_998 : f32;
  var x_1010 : f32;
  var x_1062 : f32;
  var x_1075 : f32;
  var x_1087 : f32;
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
  let x_519 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_519 < 0.5f);
  let x_521 : bool = u_xlatb1;
  if (x_521) {
    let x_524 : vec2<f32> = vs_TEXCOORD0;
    let x_528 : vec2<f32> = x_51.x_Vignette_Center;
    let x_530 : vec2<f32> = (x_524 + -(x_528));
    let x_531 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat1;
    let x_538 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_540 : vec2<f32> = (abs(vec2<f32>(x_533.y, x_533.x)) * vec2<f32>(x_538.x, x_538.x));
    let x_541 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_541.x, x_540.x, x_540.y, x_541.w);
    let x_545 : f32 = x_51.x_ScreenParams.x;
    let x_547 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_545 / x_547);
    let x_549 : f32 = u_xlat22;
    u_xlat22 = (x_549 + -1.0f);
    let x_552 : f32 = x_51.x_Vignette_Settings.w;
    let x_553 : f32 = u_xlat22;
    u_xlat22 = ((x_552 * x_553) + 1.0f);
    let x_556 : f32 = u_xlat22;
    let x_558 : f32 = u_xlat1.z;
    u_xlat1.x = (x_556 * x_558);
    let x_561 : vec4<f32> = u_xlat1;
    let x_562 : vec2<f32> = vec2<f32>(x_561.x, x_561.y);
    let x_563 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
    let x_565 : vec4<f32> = u_xlat1;
    let x_569 : vec2<f32> = clamp(vec2<f32>(x_565.x, x_565.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_570 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
    let x_572 : vec4<f32> = u_xlat1;
    let x_574 : vec2<f32> = log2(vec2<f32>(x_572.x, x_572.y));
    let x_575 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
    let x_577 : vec4<f32> = u_xlat1;
    let x_580 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_582 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_580.z, x_580.z));
    let x_583 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
    let x_585 : vec4<f32> = u_xlat1;
    let x_587 : vec2<f32> = exp2(vec2<f32>(x_585.x, x_585.y));
    let x_588 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
    let x_590 : vec4<f32> = u_xlat1;
    let x_592 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_590.x, x_590.y), vec2<f32>(x_592.x, x_592.y));
    let x_597 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_597) + 1.0f);
    let x_602 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_602, 0.0f);
    let x_606 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_606);
    let x_610 : f32 = u_xlat1.x;
    let x_612 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_610 * x_612);
    let x_616 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_616);
    let x_621 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_621) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_625 : vec4<f32> = u_xlat1;
    let x_627 : vec3<f32> = u_xlat8;
    let x_630 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_625.x, x_625.x, x_625.x) * x_627) + x_630);
    let x_632 : vec4<f32> = u_xlat0;
    let x_634 : vec3<f32> = u_xlat8;
    let x_635 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * x_634);
    let x_636 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
    let x_639 : f32 = u_xlat0.w;
    u_xlat8.x = (x_639 + -1.0f);
    let x_643 : f32 = u_xlat1.x;
    let x_645 : f32 = u_xlat8.x;
    u_xlat3.w = ((x_643 * x_645) + 1.0f);
  } else {
    let x_655 : vec2<f32> = vs_TEXCOORD0;
    let x_656 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_655);
    u_xlat1.x = x_656.w;
    let x_660 : f32 = u_xlat1.x;
    u_xlat1.z = (x_660 + 0.055f);
    let x_664 : vec4<f32> = u_xlat1;
    let x_669 : vec2<f32> = (vec2<f32>(x_664.x, x_664.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_670 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_669.x, x_669.y, x_670.z);
    let x_674 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_674), 1.1920929e-07f);
    let x_678 : f32 = u_xlat15;
    u_xlat15 = log2(x_678);
    let x_680 : f32 = u_xlat15;
    u_xlat15 = (x_680 * 2.400000095f);
    let x_683 : f32 = u_xlat15;
    u_xlat15 = exp2(x_683);
    let x_687 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_687);
    let x_689 : bool = u_xlatb1;
    if (x_689) {
      let x_695 : f32 = u_xlat8.x;
      x_691 = x_695;
    } else {
      let x_697 : f32 = u_xlat15;
      x_691 = x_697;
    }
    let x_698 : f32 = x_691;
    u_xlat1.x = x_698;
    let x_701 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_701) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_704 : vec4<f32> = u_xlat1;
    let x_706 : vec3<f32> = u_xlat8;
    let x_709 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_704.x, x_704.x, x_704.x) * x_706) + x_709);
    let x_711 : vec4<f32> = u_xlat0;
    let x_713 : vec3<f32> = u_xlat8;
    let x_715 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_711.x, x_711.y, x_711.z) * x_713) + -(vec3<f32>(x_715.x, x_715.y, x_715.z)));
    let x_721 : f32 = x_51.x_Vignette_Opacity;
    let x_723 : vec3<f32> = u_xlat8;
    let x_725 : vec4<f32> = u_xlat0;
    let x_727 : vec3<f32> = ((vec3<f32>(x_721, x_721, x_721) * x_723) + vec3<f32>(x_725.x, x_725.y, x_725.z));
    let x_728 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
    let x_731 : f32 = u_xlat0.w;
    u_xlat0.x = (x_731 + -1.0f);
    let x_735 : f32 = u_xlat1.x;
    let x_737 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_735 * x_737) + 1.0f);
  }
  let x_741 : vec4<f32> = u_xlat3;
  let x_744 : f32 = x_51.x_PostExposure;
  let x_746 : f32 = x_51.x_PostExposure;
  let x_748 : f32 = x_51.x_PostExposure;
  let x_750 : f32 = x_51.x_PostExposure;
  let x_751 : vec4<f32> = vec4<f32>(x_744, x_746, x_748, x_750);
  u_xlat0 = (x_741 * vec4<f32>(x_751.x, x_751.y, x_751.z, x_751.w));
  let x_758 : vec4<f32> = u_xlat0;
  let x_765 : vec3<f32> = ((vec3<f32>(x_758.z, x_758.x, x_758.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = log2(vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat0;
  let x_780 : vec3<f32> = ((vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = clamp(vec3<f32>(x_783.x, x_783.y, x_783.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat0;
  let x_794 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_796 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_794.z, x_794.z, x_794.z));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_800 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_800);
  let x_804 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_806 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(0.5f, 0.5f));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_807.y, x_807.z, x_806.y);
  let x_809 : vec4<f32> = u_xlat1;
  let x_812 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec2<f32> = ((vec2<f32>(x_809.y, x_809.z) * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(x_815.x, x_815.w));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_817.x, x_817.y, x_818.w);
  let x_821 : f32 = u_xlat7.x;
  let x_823 : f32 = x_51.x_Lut2D_Params.y;
  let x_826 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_821 * x_823) + x_826);
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_834.x, x_834.z));
  let x_837 : vec3<f32> = vec3<f32>(x_836.x, x_836.y, x_836.z);
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_841 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_841;
  let x_843 : vec2<f32> = u_xlat16;
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec2<f32> = (x_843 + vec2<f32>(x_844.x, x_844.z));
  let x_847 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_852.x, x_852.y));
  let x_855 : vec3<f32> = vec3<f32>(x_854.x, x_854.y, x_854.z);
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_859 : f32 = u_xlat0.x;
  let x_861 : f32 = x_51.x_Lut2D_Params.z;
  let x_864 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_859 * x_861) + -(x_864));
  let x_868 : vec4<f32> = u_xlat3;
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec3<f32> = (-(vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec4<f32> = u_xlat1;
  let x_881 : vec4<f32> = u_xlat3;
  let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.x, x_876.x) * vec3<f32>(x_878.x, x_878.y, x_878.z)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec2<f32> = vs_TEXCOORD0;
  let x_889 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_893 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_895 : vec2<f32> = ((x_886 * vec2<f32>(x_889.x, x_889.y)) + vec2<f32>(x_893.z, x_893.w));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_903.x, x_903.y));
  u_xlat1.x = x_905.w;
  let x_909 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_909 * 2.0f) + -1.0f);
  let x_914 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_914 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_920 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_920, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_924 * 2.0f) + -1.0f);
  let x_929 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_929)) + 1.0f);
  let x_935 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_935);
  let x_939 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_939) + 1.0f);
  let x_944 : f32 = u_xlat1.x;
  let x_946 : f32 = u_xlat8.x;
  u_xlat1.x = (x_944 * x_946);
  let x_949 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_949.x, x_949.y, x_949.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_954.x, x_954.y, x_954.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_959 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_959);
  let x_961 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_961 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_965 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_965);
  let x_967 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_967 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_979 : vec4<f32> = u_xlat0;
  let x_982 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_979.x, x_979.y, x_979.z, x_979.x));
  u_xlatb0 = vec3<bool>(x_982.x, x_982.y, x_982.z);
  let x_985 : bool = u_xlatb0.x;
  if (x_985) {
    let x_990 : f32 = u_xlat8.x;
    x_986 = x_990;
  } else {
    let x_993 : f32 = u_xlat2.x;
    x_986 = x_993;
  }
  let x_994 : f32 = x_986;
  u_xlat0.x = x_994;
  let x_997 : bool = u_xlatb0.y;
  if (x_997) {
    let x_1002 : f32 = u_xlat8.y;
    x_998 = x_1002;
  } else {
    let x_1005 : f32 = u_xlat2.y;
    x_998 = x_1005;
  }
  let x_1006 : f32 = x_998;
  u_xlat0.y = x_1006;
  let x_1009 : bool = u_xlatb0.z;
  if (x_1009) {
    let x_1014 : f32 = u_xlat8.z;
    x_1010 = x_1014;
  } else {
    let x_1017 : f32 = u_xlat2.z;
    x_1010 = x_1017;
  }
  let x_1018 : f32 = x_1010;
  u_xlat0.z = x_1018;
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1025 : vec4<f32> = u_xlat0;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1020.x, x_1020.x, x_1020.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1034 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1036.x, x_1036.y, x_1036.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1040 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1040 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1043 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1043), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1046 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1046);
  let x_1048 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1048 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1051 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1051);
  let x_1054 : vec4<f32> = u_xlat0;
  let x_1056 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.x));
  u_xlatb0 = vec3<bool>(x_1056.x, x_1056.y, x_1056.z);
  let x_1061 : bool = u_xlatb0.x;
  if (x_1061) {
    let x_1066 : f32 = u_xlat1.x;
    x_1062 = x_1066;
  } else {
    let x_1069 : f32 = u_xlat2.x;
    x_1062 = x_1069;
  }
  let x_1070 : f32 = x_1062;
  SV_Target0.x = x_1070;
  let x_1074 : bool = u_xlatb0.y;
  if (x_1074) {
    let x_1079 : f32 = u_xlat1.y;
    x_1075 = x_1079;
  } else {
    let x_1082 : f32 = u_xlat2.y;
    x_1075 = x_1082;
  }
  let x_1083 : f32 = x_1075;
  SV_Target0.y = x_1083;
  let x_1086 : bool = u_xlatb0.z;
  if (x_1086) {
    let x_1091 : f32 = u_xlat1.z;
    x_1087 = x_1091;
  } else {
    let x_1094 : f32 = u_xlat2.z;
    x_1087 = x_1094;
  }
  let x_1095 : f32 = x_1087;
  SV_Target0.z = x_1095;
  let x_1098 : f32 = u_xlat0.w;
  SV_Target0.w = x_1098;
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

