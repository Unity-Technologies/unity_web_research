struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_440 : f32;
  var x_452 : f32;
  var x_465 : f32;
  var x_589 : f32;
  var x_601 : f32;
  var x_613 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_19.x, x_19.y, x_19.x, x_19.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_31 : f32 = x_14.x_Bloom_Settings.x;
  u_xlat1.x = (x_31 * 0.5f);
  let x_37 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = u_xlat1;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_37.x, x_37.y, x_37.z, x_37.y) * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_47, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_52.x, x_52.w, x_52.z, x_52.w) * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_60, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : f32 = x_14.x_RenderViewportScaleFactor;
  u_xlat0 = (x_64 * vec4<f32>(x_67, x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  let x_72 : f32 = x_14.x_RenderViewportScaleFactor;
  u_xlat1 = (x_70 * vec4<f32>(x_72, x_72, x_72, x_72));
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = x_87;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_91.z, x_91.w));
  u_xlat1 = x_93;
  let x_94 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_94 + x_95);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.x, x_100.y));
  u_xlat2 = x_102;
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_106.z, x_106.w));
  u_xlat0 = x_108;
  let x_109 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_109 + x_110);
  let x_112 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_112 + x_113);
  let x_115 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = x_14.x_Bloom_Settings;
  u_xlat0 = (x_115 * vec4<f32>(x_118.y, x_118.y, x_118.y, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_121 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = x_14.x_Bloom_Color;
  let x_136 : vec3<f32> = (vec3<f32>(x_131.x, x_131.y, x_131.z) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_141 : f32 = u_xlat1.w;
  u_xlat2.w = (x_141 * 0.25f);
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  let x_151 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_150);
  u_xlat9 = x_151.x;
  let x_159 : vec2<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_159);
  u_xlat1 = x_160;
  let x_161 : f32 = u_xlat9;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = (vec3<f32>(x_161, x_161, x_161) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_168 + x_169);
  let x_171 : vec2<f32> = vs_TEXCOORD0;
  let x_174 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_178 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_180 : vec2<f32> = ((x_171 * vec2<f32>(x_174.x, x_174.y)) + vec2<f32>(x_178.z, x_178.w));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_188.x, x_188.y));
  let x_191 : vec3<f32> = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec3<f32> = x_14.x_Bloom_Settings;
  let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_197.z, x_197.z, x_197.z));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  u_xlat0.w = 0.0f;
  let x_210 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_210 + x_211);
  let x_213 : vec4<f32> = u_xlat0;
  let x_214 : vec3<f32> = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = clamp(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_233 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_233);
  let x_238 : f32 = x_14.x_Grain_Params1.x;
  let x_240 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_238 * -(x_240)) + 1.0f);
  let x_247 : vec2<f32> = vs_TEXCOORD1;
  let x_250 : vec4<f32> = x_14.x_Grain_Params2;
  let x_254 : vec4<f32> = x_14.x_Grain_Params2;
  let x_256 : vec2<f32> = ((x_247 * vec2<f32>(x_250.x, x_250.y)) + vec2<f32>(x_254.z, x_254.w));
  let x_257 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_256.x, x_256.y, x_257.z);
  let x_264 : vec3<f32> = u_xlat4;
  let x_266 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_264.x, x_264.y));
  u_xlat4 = vec3<f32>(x_266.x, x_266.y, x_266.z);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_268.x, x_268.y, x_268.z) * x_270);
  let x_272 : vec3<f32> = u_xlat4;
  let x_275 : f32 = x_14.x_Grain_Params1.y;
  let x_277 : f32 = x_14.x_Grain_Params1.y;
  let x_279 : f32 = x_14.x_Grain_Params1.y;
  u_xlat4 = (x_272 * vec3<f32>(x_275, x_277, x_279));
  let x_282 : vec3<f32> = u_xlat4;
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = ((x_282 * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : f32 = x_14.x_PostExposure;
  let x_296 : f32 = x_14.x_PostExposure;
  let x_298 : f32 = x_14.x_PostExposure;
  let x_300 : f32 = x_14.x_PostExposure;
  let x_301 : vec4<f32> = vec4<f32>(x_294, x_296, x_298, x_300);
  u_xlat0 = (x_291 * vec4<f32>(x_301.x, x_301.y, x_301.z, x_301.w));
  let x_308 : vec4<f32> = u_xlat0;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_321 : f32 = u_xlat0.w;
  SV_Target0.w = x_321;
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = log2(vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = clamp(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat0;
  let x_351 : vec2<f32> = x_14.x_Lut3D_Params;
  let x_353 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_351.y, x_351.y, x_351.y));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = x_14.x_Lut3D_Params.x;
  u_xlat9 = (x_357 * 0.5f);
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : vec2<f32> = x_14.x_Lut3D_Params;
  let x_365 : f32 = u_xlat9;
  let x_367 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + vec3<f32>(x_365, x_365, x_365));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec3<f32> = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = max(abs(vec3<f32>(x_384.x, x_384.y, x_384.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat1;
  let x_394 : vec3<f32> = log2(vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = exp2(vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat1;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_432 : vec4<f32> = u_xlat0;
  let x_435 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_432.x, x_432.y, x_432.z, x_432.x));
  u_xlatb0 = vec3<bool>(x_435.x, x_435.y, x_435.z);
  let x_439 : bool = u_xlatb0.x;
  if (x_439) {
    let x_444 : f32 = u_xlat2.x;
    x_440 = x_444;
  } else {
    let x_447 : f32 = u_xlat1.x;
    x_440 = x_447;
  }
  let x_448 : f32 = x_440;
  u_xlat0.x = x_448;
  let x_451 : bool = u_xlatb0.y;
  if (x_451) {
    let x_456 : f32 = u_xlat2.y;
    x_452 = x_456;
  } else {
    let x_459 : f32 = u_xlat1.y;
    x_452 = x_459;
  }
  let x_460 : f32 = x_452;
  u_xlat0.y = x_460;
  let x_464 : bool = u_xlatb0.z;
  if (x_464) {
    let x_469 : f32 = u_xlat2.z;
    x_465 = x_469;
  } else {
    let x_472 : f32 = u_xlat1.z;
    x_465 = x_472;
  }
  let x_473 : f32 = x_465;
  u_xlat0.z = x_473;
  let x_475 : vec2<f32> = vs_TEXCOORD0;
  let x_478 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_482 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_484 : vec2<f32> = ((x_475 * vec2<f32>(x_478.x, x_478.y)) + vec2<f32>(x_482.z, x_482.w));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_492.x, x_492.y));
  u_xlat9 = x_494.w;
  let x_496 : f32 = u_xlat9;
  u_xlat9 = ((x_496 * 2.0f) + -1.0f);
  let x_500 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_500)) + 1.0f);
  let x_505 : f32 = u_xlat9;
  u_xlat9 = ((x_505 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_509 : f32 = u_xlat9;
  u_xlat9 = clamp(x_509, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat9;
  u_xlat9 = ((x_511 * 2.0f) + -1.0f);
  let x_515 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_515);
  let x_519 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat9;
  let x_525 : f32 = u_xlat1.x;
  u_xlat9 = (x_523 * x_525);
  let x_527 : f32 = u_xlat9;
  let x_532 : vec4<f32> = u_xlat0;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527, x_527, x_527) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat0;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_554 : vec3<f32> = max(abs(vec3<f32>(x_551.x, x_551.y, x_551.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat1;
  let x_559 : vec3<f32> = log2(vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat1;
  let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = exp2(vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat0;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_583 : vec4<f32> = u_xlat0;
  let x_585 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_583.x, x_583.y, x_583.z, x_583.x));
  u_xlatb0 = vec3<bool>(x_585.x, x_585.y, x_585.z);
  let x_588 : bool = u_xlatb0.x;
  if (x_588) {
    let x_593 : f32 = u_xlat2.x;
    x_589 = x_593;
  } else {
    let x_596 : f32 = u_xlat1.x;
    x_589 = x_596;
  }
  let x_597 : f32 = x_589;
  SV_Target0.x = x_597;
  let x_600 : bool = u_xlatb0.y;
  if (x_600) {
    let x_605 : f32 = u_xlat2.y;
    x_601 = x_605;
  } else {
    let x_608 : f32 = u_xlat1.y;
    x_601 = x_608;
  }
  let x_609 : f32 = x_601;
  SV_Target0.y = x_609;
  let x_612 : bool = u_xlatb0.z;
  if (x_612) {
    let x_617 : f32 = u_xlat2.z;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat1.z;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  SV_Target0.z = x_621;
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

