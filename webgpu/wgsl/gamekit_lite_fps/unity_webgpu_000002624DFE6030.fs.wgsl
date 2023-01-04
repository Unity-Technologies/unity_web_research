struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_551 : f32;
  var x_563 : f32;
  var x_575 : f32;
  var x_632 : f32;
  var x_645 : f32;
  var x_657 : f32;
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
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : vec2<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_51.x_Grain_Params2;
  let x_231 : vec4<f32> = x_51.x_Grain_Params2;
  let x_233 : vec2<f32> = ((x_224 * vec2<f32>(x_227.x, x_227.y)) + vec2<f32>(x_231.z, x_231.w));
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_233.x, x_233.y, x_234.z);
  let x_241 : vec3<f32> = u_xlat2;
  let x_243 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_241.x, x_241.y));
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = vec3<f32>(x_247.x, x_247.y, x_247.z);
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = clamp(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_265 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_265);
  let x_269 : f32 = x_51.x_Grain_Params1.x;
  let x_270 : f32 = u_xlat21;
  u_xlat21 = ((x_269 * -(x_270)) + 1.0f);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_284 : f32 = x_51.x_Grain_Params1.y;
  let x_286 : f32 = x_51.x_Grain_Params1.y;
  let x_288 : f32 = x_51.x_Grain_Params1.y;
  let x_290 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_284, x_286, x_288));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat3;
  let x_295 : f32 = u_xlat21;
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295, x_295, x_295)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat1;
  let x_306 : f32 = x_51.x_PostExposure;
  let x_308 : f32 = x_51.x_PostExposure;
  let x_310 : f32 = x_51.x_PostExposure;
  let x_312 : f32 = x_51.x_PostExposure;
  let x_313 : vec4<f32> = vec4<f32>(x_306, x_308, x_310, x_312);
  u_xlat0 = (x_303 * vec4<f32>(x_313.x, x_313.y, x_313.z, x_313.w));
  let x_320 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.z, x_320.x, x_320.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = log2(vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = clamp(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_359 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_357.z, x_357.z, x_357.z));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_363);
  let x_367 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_369 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) * vec2<f32>(0.5f, 0.5f));
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_370.y, x_370.z, x_369.y);
  let x_372 : vec4<f32> = u_xlat1;
  let x_375 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec2<f32> = ((vec2<f32>(x_372.y, x_372.z) * vec2<f32>(x_375.x, x_375.y)) + vec2<f32>(x_378.x, x_378.w));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_380.x, x_380.y, x_381.w);
  let x_384 : f32 = u_xlat7.x;
  let x_386 : f32 = x_51.x_Lut2D_Params.y;
  let x_389 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_384 * x_386) + x_389);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_397.x, x_397.z));
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.z);
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_404;
  let x_406 : vec2<f32> = u_xlat16;
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec2<f32> = (x_406 + vec2<f32>(x_407.x, x_407.z));
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_415.x, x_415.y));
  let x_418 : vec3<f32> = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_422 : f32 = u_xlat0.x;
  let x_424 : f32 = x_51.x_Lut2D_Params.z;
  let x_427 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_422 * x_424) + -(x_427));
  let x_431 : vec4<f32> = u_xlat3;
  let x_434 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = (-(vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.x, x_439.x) * vec3<f32>(x_441.x, x_441.y, x_441.z)) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec2<f32> = vs_TEXCOORD0;
  let x_451 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_455 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_457 : vec2<f32> = ((x_449 * vec2<f32>(x_451.x, x_451.y)) + vec2<f32>(x_455.z, x_455.w));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_465.x, x_465.y));
  u_xlat1.x = x_467.w;
  let x_471 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_471 * 2.0f) + -1.0f);
  let x_476 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_476 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_482 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_482, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_486 * 2.0f) + -1.0f);
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_491)) + 1.0f);
  let x_497 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_497);
  let x_501 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_501) + 1.0f);
  let x_506 : f32 = u_xlat1.x;
  let x_508 : f32 = u_xlat8.x;
  u_xlat1.x = (x_506 * x_508);
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_516.x, x_516.y, x_516.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_522 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_522);
  let x_524 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_524 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_528 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_528);
  let x_530 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_530 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_542 : vec4<f32> = u_xlat0;
  let x_545 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_542.x, x_542.y, x_542.z, x_542.x));
  u_xlatb0 = vec3<bool>(x_545.x, x_545.y, x_545.z);
  let x_549 : bool = u_xlatb0.x;
  if (x_549) {
    let x_555 : f32 = u_xlat8.x;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat2.x;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  u_xlat0.x = x_559;
  let x_562 : bool = u_xlatb0.y;
  if (x_562) {
    let x_567 : f32 = u_xlat8.y;
    x_563 = x_567;
  } else {
    let x_570 : f32 = u_xlat2.y;
    x_563 = x_570;
  }
  let x_571 : f32 = x_563;
  u_xlat0.y = x_571;
  let x_574 : bool = u_xlatb0.z;
  if (x_574) {
    let x_579 : f32 = u_xlat8.z;
    x_575 = x_579;
  } else {
    let x_582 : f32 = u_xlat2.z;
    x_575 = x_582;
  }
  let x_583 : f32 = x_575;
  u_xlat0.z = x_583;
  let x_585 : vec4<f32> = u_xlat1;
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = ((vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_602.x, x_602.y, x_602.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_607 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_607 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_611 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_611), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_614 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_614);
  let x_616 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_616 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_620 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_620);
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_624.x, x_624.y, x_624.z, x_624.x));
  u_xlatb0 = vec3<bool>(x_626.x, x_626.y, x_626.z);
  let x_631 : bool = u_xlatb0.x;
  if (x_631) {
    let x_636 : f32 = u_xlat1.x;
    x_632 = x_636;
  } else {
    let x_639 : f32 = u_xlat2.x;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  SV_Target0.x = x_640;
  let x_644 : bool = u_xlatb0.y;
  if (x_644) {
    let x_649 : f32 = u_xlat1.y;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.y;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  SV_Target0.y = x_653;
  let x_656 : bool = u_xlatb0.z;
  if (x_656) {
    let x_661 : f32 = u_xlat1.z;
    x_657 = x_661;
  } else {
    let x_664 : f32 = u_xlat2.z;
    x_657 = x_664;
  }
  let x_665 : f32 = x_657;
  SV_Target0.z = x_665;
  let x_668 : f32 = u_xlat0.w;
  SV_Target0.w = x_668;
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

