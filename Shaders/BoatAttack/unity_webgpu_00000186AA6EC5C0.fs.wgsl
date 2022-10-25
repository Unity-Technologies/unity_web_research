struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var u_xlat8 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlatb23 : bool;
  var x_215 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_247 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_689 : f32;
  var x_701 : f32;
  var x_713 : f32;
  var x_882 : f32;
  var x_894 : f32;
  var x_906 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1110 : f32;
  var x_1122 : f32;
  var x_1134 : f32;
  var x_1224 : f32;
  var x_1236 : f32;
  var x_1248 : f32;
  var x_1305 : f32;
  var x_1317 : f32;
  var x_1329 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat8.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_115);
    let x_118 : f32 = u_xlat8.x;
    let x_119 : f32 = u_xlat15;
    u_xlat8.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat8;
    let x_129 : vec2<f32> = u_xlat14;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_136);
    let x_138 : f32 = u_xlat22;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat22 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_158);
    let x_160 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat9 = (x_166 * x_168);
    let x_171 : f32 = u_xlat9;
    u_xlat16.x = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_177 : f32 = u_xlat9;
    let x_179 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_177 * x_179) + 0.180141002f);
    let x_184 : f32 = u_xlat9;
    let x_186 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_184 * x_186) + -0.330299497f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat16.x;
    u_xlat9 = ((x_191 * x_193) + 0.999866009f);
    let x_197 : f32 = u_xlat9;
    let x_199 : f32 = u_xlat2.x;
    u_xlat16.x = (x_197 * x_199);
    let x_204 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_204));
    let x_208 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_208 * -2.0f) + 1.570796371f);
    let x_214 : bool = u_xlatb23;
    if (x_214) {
      let x_219 : f32 = u_xlat16.x;
      x_215 = x_219;
    } else {
      x_215 = 0.0f;
    }
    let x_221 : f32 = x_215;
    u_xlat16.x = x_221;
    let x_224 : f32 = u_xlat2.x;
    let x_225 : f32 = u_xlat9;
    let x_228 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_224 * x_225) + x_228);
    let x_232 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_232, 1.0f);
    let x_239 : f32 = u_xlat1.x;
    let x_241 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_239 < -(x_241));
    let x_246 : bool = u_xlatb1.x;
    if (x_246) {
      let x_251 : f32 = u_xlat2.x;
      x_247 = -(x_251);
    } else {
      let x_255 : f32 = u_xlat2.x;
      x_247 = x_255;
    }
    let x_256 : f32 = x_247;
    u_xlat1.x = x_256;
    let x_258 : f32 = u_xlat22;
    let x_260 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_258 * x_260) + -1.0f);
    let x_264 : vec4<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec2<f32> = u_xlat14;
    let x_270 : vec2<f32> = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_266.x, x_266.x)) + x_269);
    let x_271 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_270.x, x_270.y, x_271.z);
  }
  let x_283 : vec3<f32> = u_xlat8;
  let x_287 : f32 = x_25.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_283.x, x_283.y), x_287);
  let x_289 : vec3<f32> = vec3<f32>(x_288.x, x_288.y, x_288.z);
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat8;
  let x_296 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_299 : vec2<f32> = ((vec2<f32>(x_292.x, x_292.y) * vec2<f32>(x_296.z, x_296.w)) + vec2<f32>(0.5f, 0.5f));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec2<f32> = floor(vec2<f32>(x_302.x, x_302.w));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec2<f32> = fract(vec2<f32>(x_307.x, x_307.w));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_310.y, x_310.z, x_309.y);
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_312.x, x_312.w, x_312.x, x_312.w)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_320.x, x_320.w, x_320.x, x_320.w) * x_322) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_326.x, x_326.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec2<f32> = (vec2<f32>(x_332.x, x_332.w) * vec2<f32>(x_334.x, x_334.w));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_339.x, x_339.y) * x_341) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_346.x, x_346.w, x_346.x, x_346.w) * x_348) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_352 : vec2<f32> = u_xlat16;
  let x_355 : vec2<f32> = (-(x_352) + vec2<f32>(1.0f, 1.0f));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_356.y, x_356.z, x_355.y);
  let x_358 : vec4<f32> = u_xlat3;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec2<f32> = (-(vec2<f32>(x_358.x, x_358.y)) + vec2<f32>(x_361.x, x_361.w));
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_363.x, x_364.y, x_364.z, x_363.y);
  let x_366 : vec4<f32> = u_xlat3;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec2<f32> = (-(vec2<f32>(x_366.z, x_366.w)) + vec2<f32>(x_369.x, x_369.w));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_372.y, x_372.z, x_371.y);
  let x_375 : vec2<f32> = u_xlat16;
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_375 + vec2<f32>(x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat1;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.w) + vec2<f32>(x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
  let x_386 : vec2<f32> = u_xlat17;
  let x_390 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_386.x, x_386.y));
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec2<f32> = u_xlat16;
  let x_394 : vec4<f32> = u_xlat4;
  let x_397 : vec2<f32> = ((x_393 * vec2<f32>(x_394.x, x_394.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_397.x, x_397.y);
  let x_400 : vec4<f32> = u_xlat3;
  let x_401 : vec2<f32> = vec2<f32>(x_400.x, x_400.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_401.x, x_401.y));
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec2<f32> = u_xlat16;
  let x_410 : vec2<f32> = ((vec2<f32>(x_406.x, x_406.w) * x_408) + vec2<f32>(1.0f, 1.0f));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_414.x, x_414.y, x_414.x, x_414.y) + vec4<f32>(x_416.z, x_416.w, x_416.x, x_416.w));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_419 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_422 * vec4<f32>(x_424.x, x_424.y, x_424.x, x_424.y));
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_427, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_435 : vec4<f32> = u_xlat5;
  let x_437 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_435.x, x_435.y), 0.0f);
  u_xlat6 = x_437;
  let x_441 : vec4<f32> = u_xlat5;
  let x_443 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_441.z, x_441.w), 0.0f);
  u_xlat5 = x_443;
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_444.x, x_444.x, x_444.x, x_444.x) * x_446);
  let x_448 : vec2<f32> = u_xlat17;
  let x_450 : vec4<f32> = u_xlat6;
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_448.x, x_448.x, x_448.x, x_448.x) * x_450) + x_452);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + vec4<f32>(x_456.z, x_456.y, x_456.x, x_456.y));
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_459 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_461 * vec4<f32>(x_463.x, x_463.y, x_463.x, x_463.y));
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_466, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_471.x, x_471.y), 0.0f);
  u_xlat4 = x_473;
  let x_477 : vec4<f32> = u_xlat2;
  let x_479 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_477.z, x_477.w), 0.0f);
  u_xlat2 = x_479;
  let x_480 : vec4<f32> = u_xlat2;
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_480 * vec4<f32>(x_481.x, x_481.x, x_481.x, x_481.x));
  let x_484 : vec2<f32> = u_xlat17;
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_484.x, x_484.x, x_484.x, x_484.x) * x_486) + x_488);
  let x_490 : vec4<f32> = u_xlat2;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_490 * vec4<f32>(x_491.y, x_491.y, x_491.y, x_491.y));
  let x_494 : vec2<f32> = u_xlat17;
  let x_496 : vec4<f32> = u_xlat5;
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_494.y, x_494.y, x_494.y, x_494.y) * x_496) + x_498);
  let x_503 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_503);
  let x_505 : bool = u_xlatb21;
  if (x_505) {
    let x_508 : vec4<f32> = u_xlat2;
    let x_510 : vec4<f32> = u_xlat2;
    let x_512 : vec3<f32> = (vec3<f32>(x_508.w, x_508.w, x_508.w) * vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_513 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat3;
    let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_520 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  }
  let x_522 : vec4<f32> = u_xlat2;
  let x_526 : vec4<f32> = x_25.x_Bloom_Params;
  let x_528 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) * vec3<f32>(x_526.x, x_526.x, x_526.x));
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_25.x_Bloom_Params;
  let x_537 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_534.y, x_534.z, x_534.w)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_545 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_545);
  let x_547 : bool = u_xlatb21;
  if (x_547) {
    let x_550 : vec3<f32> = u_xlat8;
    let x_553 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_556 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) + -(vec2<f32>(x_553.x, x_553.y)));
    let x_557 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
    let x_559 : vec4<f32> = u_xlat1;
    let x_563 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_565 : vec2<f32> = (abs(vec2<f32>(x_559.x, x_559.y)) * vec2<f32>(x_563.z, x_563.z));
    let x_566 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_566.x, x_565.x, x_565.y, x_566.w);
    let x_569 : f32 = u_xlat1.y;
    let x_572 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_569 * x_572);
    let x_576 : vec4<f32> = u_xlat1;
    let x_578 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_576.x, x_576.z), vec2<f32>(x_578.x, x_578.z));
    let x_581 : f32 = u_xlat21;
    u_xlat21 = (-(x_581) + 1.0f);
    let x_584 : f32 = u_xlat21;
    u_xlat21 = max(x_584, 0.0f);
    let x_586 : f32 = u_xlat21;
    u_xlat21 = log2(x_586);
    let x_588 : f32 = u_xlat21;
    let x_590 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_588 * x_590);
    let x_592 : f32 = u_xlat21;
    u_xlat21 = exp2(x_592);
    let x_595 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_599 : vec3<f32> = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_600 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_602 : f32 = u_xlat21;
    let x_604 : vec4<f32> = u_xlat1;
    let x_608 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_610 : vec3<f32> = ((vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_613 : vec4<f32> = u_xlat0;
    let x_615 : vec4<f32> = u_xlat1;
    let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615.x, x_615.y, x_615.z));
    let x_618 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  }
  let x_620 : vec4<f32> = u_xlat0;
  let x_624 : vec4<f32> = x_25.x_Lut_Params;
  let x_626 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_624.w, x_624.w, x_624.w));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_633 : vec3<f32> = clamp(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_638 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_638);
  let x_640 : bool = u_xlatb21;
  if (x_640) {
    let x_643 : vec4<f32> = u_xlat0;
    let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_648 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
    let x_650 : vec4<f32> = u_xlat0;
    let x_652 : vec3<f32> = log2(vec3<f32>(x_650.x, x_650.y, x_650.z));
    let x_653 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
    let x_655 : vec4<f32> = u_xlat2;
    let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_660 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat2;
    let x_664 : vec3<f32> = exp2(vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_665 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat2;
    let x_674 : vec3<f32> = ((vec3<f32>(x_667.x, x_667.y, x_667.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_675 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
    let x_680 : vec4<f32> = u_xlat0;
    let x_683 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_680.x, x_680.y, x_680.z, x_680.x));
    u_xlatb3 = vec3<bool>(x_683.x, x_683.y, x_683.z);
    let x_686 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_686;
    let x_688 : bool = u_xlatb3.x;
    if (x_688) {
      let x_693 : f32 = u_xlat1.x;
      x_689 = x_693;
    } else {
      let x_696 : f32 = u_xlat2.x;
      x_689 = x_696;
    }
    let x_697 : f32 = x_689;
    hlslcc_movcTemp.x = x_697;
    let x_700 : bool = u_xlatb3.y;
    if (x_700) {
      let x_705 : f32 = u_xlat1.y;
      x_701 = x_705;
    } else {
      let x_708 : f32 = u_xlat2.y;
      x_701 = x_708;
    }
    let x_709 : f32 = x_701;
    hlslcc_movcTemp.y = x_709;
    let x_712 : bool = u_xlatb3.z;
    if (x_712) {
      let x_717 : f32 = u_xlat1.z;
      x_713 = x_717;
    } else {
      let x_720 : f32 = u_xlat2.z;
      x_713 = x_720;
    }
    let x_721 : f32 = x_713;
    hlslcc_movcTemp.z = x_721;
    let x_723 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_723;
    let x_724 : vec4<f32> = u_xlat1;
    let x_727 : vec4<f32> = x_25.x_UserLut_Params;
    let x_729 : vec3<f32> = (vec3<f32>(x_724.z, x_724.x, x_724.y) * vec3<f32>(x_727.z, x_727.z, x_727.z));
    let x_730 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
    let x_733 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_733);
    let x_736 : vec4<f32> = x_25.x_UserLut_Params;
    let x_738 : vec2<f32> = (vec2<f32>(x_736.x, x_736.y) * vec2<f32>(0.5f, 0.5f));
    let x_739 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_738.x, x_739.y, x_739.z, x_738.y);
    let x_741 : vec4<f32> = u_xlat2;
    let x_744 : vec4<f32> = x_25.x_UserLut_Params;
    let x_747 : vec4<f32> = u_xlat2;
    let x_749 : vec2<f32> = ((vec2<f32>(x_741.y, x_741.z) * vec2<f32>(x_744.x, x_744.y)) + vec2<f32>(x_747.x, x_747.w));
    let x_750 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_749.x, x_749.y, x_750.w);
    let x_752 : f32 = u_xlat21;
    let x_754 : f32 = x_25.x_UserLut_Params.y;
    let x_757 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_752 * x_754) + x_757);
    let x_764 : vec4<f32> = u_xlat2;
    let x_766 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_764.x, x_764.z), 0.0f);
    let x_767 : vec3<f32> = vec3<f32>(x_766.x, x_766.y, x_766.z);
    let x_768 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
    let x_771 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_771;
    u_xlat4.y = 0.0f;
    let x_774 : vec4<f32> = u_xlat2;
    let x_776 : vec4<f32> = u_xlat4;
    let x_778 : vec2<f32> = (vec2<f32>(x_774.x, x_774.z) + vec2<f32>(x_776.x, x_776.y));
    let x_779 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
    let x_784 : vec4<f32> = u_xlat2;
    let x_786 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_784.x, x_784.y), 0.0f);
    let x_787 : vec3<f32> = vec3<f32>(x_786.x, x_786.y, x_786.z);
    let x_788 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
    let x_791 : f32 = u_xlat1.z;
    let x_793 : f32 = x_25.x_UserLut_Params.z;
    let x_795 : f32 = u_xlat21;
    u_xlat21 = ((x_791 * x_793) + -(x_795));
    let x_798 : vec4<f32> = u_xlat3;
    let x_801 : vec4<f32> = u_xlat2;
    let x_803 : vec3<f32> = (-(vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
    let x_804 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
    let x_806 : f32 = u_xlat21;
    let x_808 : vec4<f32> = u_xlat2;
    let x_811 : vec4<f32> = u_xlat3;
    let x_813 : vec3<f32> = ((vec3<f32>(x_806, x_806, x_806) * vec3<f32>(x_808.x, x_808.y, x_808.z)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
    let x_814 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
    let x_816 : vec4<f32> = u_xlat1;
    let x_819 : vec4<f32> = u_xlat2;
    let x_821 : vec3<f32> = (-(vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
    let x_822 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
    let x_825 : vec4<f32> = x_25.x_UserLut_Params;
    let x_827 : vec4<f32> = u_xlat2;
    let x_830 : vec4<f32> = u_xlat1;
    let x_832 : vec3<f32> = ((vec3<f32>(x_825.w, x_825.w, x_825.w) * vec3<f32>(x_827.x, x_827.y, x_827.z)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
    let x_833 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
    let x_835 : vec4<f32> = u_xlat1;
    let x_839 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_840 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
    let x_842 : vec4<f32> = u_xlat1;
    let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_847 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
    let x_849 : vec4<f32> = u_xlat3;
    let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_854 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
    let x_856 : vec4<f32> = u_xlat3;
    let x_859 : vec3<f32> = log2(abs(vec3<f32>(x_856.x, x_856.y, x_856.z)));
    let x_860 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
    let x_862 : vec4<f32> = u_xlat3;
    let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_867 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_869 : vec4<f32> = u_xlat3;
    let x_871 : vec3<f32> = exp2(vec3<f32>(x_869.x, x_869.y, x_869.z));
    let x_872 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
    let x_876 : vec4<f32> = u_xlat1;
    let x_878 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_876.x, x_876.y, x_876.z, x_876.x));
    u_xlatb1 = vec3<bool>(x_878.x, x_878.y, x_878.z);
    let x_881 : bool = u_xlatb1.x;
    if (x_881) {
      let x_886 : f32 = u_xlat2.x;
      x_882 = x_886;
    } else {
      let x_889 : f32 = u_xlat3.x;
      x_882 = x_889;
    }
    let x_890 : f32 = x_882;
    u_xlat0.x = x_890;
    let x_893 : bool = u_xlatb1.y;
    if (x_893) {
      let x_898 : f32 = u_xlat2.y;
      x_894 = x_898;
    } else {
      let x_901 : f32 = u_xlat3.y;
      x_894 = x_901;
    }
    let x_902 : f32 = x_894;
    u_xlat0.y = x_902;
    let x_905 : bool = u_xlatb1.z;
    if (x_905) {
      let x_910 : f32 = u_xlat2.z;
      x_906 = x_910;
    } else {
      let x_913 : f32 = u_xlat3.z;
      x_906 = x_913;
    }
    let x_914 : f32 = x_906;
    u_xlat0.z = x_914;
  }
  let x_916 : vec4<f32> = u_xlat0;
  let x_919 : vec4<f32> = x_25.x_Lut_Params;
  let x_921 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_919.z, x_919.z, x_919.z));
  let x_922 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_921.z);
  let x_925 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_925);
  let x_928 : vec4<f32> = x_25.x_Lut_Params;
  let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(0.5f, 0.5f));
  let x_931 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat0;
  let x_936 : vec4<f32> = x_25.x_Lut_Params;
  let x_939 : vec4<f32> = u_xlat1;
  let x_941 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.y) * vec2<f32>(x_936.x, x_936.y)) + vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_941.x, x_941.y, x_942.w);
  let x_944 : f32 = u_xlat21;
  let x_946 : f32 = x_25.x_Lut_Params.y;
  let x_949 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_944 * x_946) + x_949);
  let x_956 : vec4<f32> = u_xlat1;
  let x_958 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_956.x, x_956.z), 0.0f);
  let x_959 : vec3<f32> = vec3<f32>(x_958.x, x_958.y, x_958.z);
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_963 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_963;
  u_xlat0.y = 0.0f;
  let x_966 : vec4<f32> = u_xlat0;
  let x_968 : vec4<f32> = u_xlat1;
  let x_970 : vec2<f32> = (vec2<f32>(x_966.x, x_966.y) + vec2<f32>(x_968.x, x_968.z));
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
  let x_976 : vec4<f32> = u_xlat0;
  let x_978 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_976.x, x_976.y), 0.0f);
  let x_979 : vec3<f32> = vec3<f32>(x_978.x, x_978.y, x_978.z);
  let x_980 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_983 : f32 = u_xlat0.z;
  let x_985 : f32 = x_25.x_Lut_Params.z;
  let x_987 : f32 = u_xlat21;
  u_xlat0.x = ((x_983 * x_985) + -(x_987));
  let x_992 : vec4<f32> = u_xlat2;
  let x_995 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_992.x, x_992.y, x_992.z)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat0;
  let x_1000 : vec3<f32> = u_xlat7;
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1004 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.x, x_998.x) * x_1000) + vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec2<f32> = vs_TEXCOORD0;
  let x_1010 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1014 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1016 : vec2<f32> = ((x_1007 * vec2<f32>(x_1010.x, x_1010.y)) + vec2<f32>(x_1014.z, x_1014.w));
  let x_1017 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1027 : f32 = x_25.x_GlobalMipBias.x;
  let x_1028 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1024.x, x_1024.y), x_1027);
  u_xlat21 = x_1028.w;
  let x_1030 : f32 = u_xlat21;
  u_xlat21 = (x_1030 + -0.5f);
  let x_1032 : f32 = u_xlat21;
  let x_1033 : f32 = u_xlat21;
  u_xlat21 = (x_1032 + x_1033);
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1044 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1044);
  let x_1049 : f32 = x_25.x_Grain_Params.y;
  let x_1051 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1049 * -(x_1051)) + 1.0f);
  let x_1056 : f32 = u_xlat21;
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1056, x_1056, x_1056) * vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec3<f32> = u_xlat8;
  let x_1064 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1061 * vec3<f32>(x_1064.x, x_1064.x, x_1064.x));
  let x_1067 : vec3<f32> = u_xlat8;
  let x_1068 : vec4<f32> = u_xlat1;
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1073 : vec3<f32> = ((x_1067 * vec3<f32>(x_1068.x, x_1068.x, x_1068.x)) + vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1079 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat0;
  let x_1084 : vec3<f32> = log2(abs(vec3<f32>(x_1081.x, x_1081.y, x_1081.z)));
  let x_1085 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1087 : vec4<f32> = u_xlat2;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1090 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat2;
  let x_1094 : vec3<f32> = exp2(vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat2;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1106 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1104.x));
  u_xlatb0 = vec3<bool>(x_1106.x, x_1106.y, x_1106.z);
  let x_1109 : bool = u_xlatb0.x;
  if (x_1109) {
    let x_1114 : f32 = u_xlat1.x;
    x_1110 = x_1114;
  } else {
    let x_1117 : f32 = u_xlat2.x;
    x_1110 = x_1117;
  }
  let x_1118 : f32 = x_1110;
  u_xlat0.x = x_1118;
  let x_1121 : bool = u_xlatb0.y;
  if (x_1121) {
    let x_1126 : f32 = u_xlat1.y;
    x_1122 = x_1126;
  } else {
    let x_1129 : f32 = u_xlat2.y;
    x_1122 = x_1129;
  }
  let x_1130 : f32 = x_1122;
  u_xlat0.y = x_1130;
  let x_1133 : bool = u_xlatb0.z;
  if (x_1133) {
    let x_1138 : f32 = u_xlat1.z;
    x_1134 = x_1138;
  } else {
    let x_1141 : f32 = u_xlat2.z;
    x_1134 = x_1141;
  }
  let x_1142 : f32 = x_1134;
  u_xlat0.z = x_1142;
  let x_1144 : vec2<f32> = vs_TEXCOORD0;
  let x_1147 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1151 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1153 : vec2<f32> = ((x_1144 * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1151.z, x_1151.w));
  let x_1154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
  let x_1161 : vec4<f32> = u_xlat1;
  let x_1164 : f32 = x_25.x_GlobalMipBias.x;
  let x_1165 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1161.x, x_1161.y), x_1164);
  u_xlat21 = x_1165.w;
  let x_1167 : f32 = u_xlat21;
  u_xlat21 = ((x_1167 * 2.0f) + -1.0f);
  let x_1171 : f32 = u_xlat21;
  u_xlatb1.x = (x_1171 >= 0.0f);
  let x_1175 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1175);
  let x_1178 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1178)) + 1.0f);
  let x_1182 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1182);
  let x_1184 : f32 = u_xlat21;
  u_xlat21 = (-(x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat21;
  let x_1189 : f32 = u_xlat1.x;
  u_xlat21 = (x_1187 * x_1189);
  let x_1191 : vec4<f32> = u_xlat0;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1199 : vec3<f32> = log2(abs(vec3<f32>(x_1196.x, x_1196.y, x_1196.z)));
  let x_1200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1209 : vec3<f32> = exp2(vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec4<f32> = u_xlat2;
  let x_1215 : vec3<f32> = ((vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat0;
  let x_1220 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1218.x));
  u_xlatb0 = vec3<bool>(x_1220.x, x_1220.y, x_1220.z);
  let x_1223 : bool = u_xlatb0.x;
  if (x_1223) {
    let x_1228 : f32 = u_xlat1.x;
    x_1224 = x_1228;
  } else {
    let x_1231 : f32 = u_xlat2.x;
    x_1224 = x_1231;
  }
  let x_1232 : f32 = x_1224;
  u_xlat0.x = x_1232;
  let x_1235 : bool = u_xlatb0.y;
  if (x_1235) {
    let x_1240 : f32 = u_xlat1.y;
    x_1236 = x_1240;
  } else {
    let x_1243 : f32 = u_xlat2.y;
    x_1236 = x_1243;
  }
  let x_1244 : f32 = x_1236;
  u_xlat0.y = x_1244;
  let x_1247 : bool = u_xlatb0.z;
  if (x_1247) {
    let x_1252 : f32 = u_xlat1.z;
    x_1248 = x_1252;
  } else {
    let x_1255 : f32 = u_xlat2.z;
    x_1248 = x_1255;
  }
  let x_1256 : f32 = x_1248;
  u_xlat0.z = x_1256;
  let x_1258 : f32 = u_xlat21;
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1265 : vec3<f32> = ((vec3<f32>(x_1258, x_1258, x_1258) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1268 : vec4<f32> = u_xlat0;
  let x_1270 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat0;
  let x_1275 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat2;
  let x_1280 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat2;
  let x_1286 : vec3<f32> = log2(abs(vec3<f32>(x_1283.x, x_1283.y, x_1283.z)));
  let x_1287 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec4<f32> = u_xlat2;
  let x_1291 : vec3<f32> = (vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat2;
  let x_1296 : vec3<f32> = exp2(vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec4<f32> = u_xlat0;
  let x_1301 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1299.x));
  u_xlatb0 = vec3<bool>(x_1301.x, x_1301.y, x_1301.z);
  let x_1304 : bool = u_xlatb0.x;
  if (x_1304) {
    let x_1309 : f32 = u_xlat1.x;
    x_1305 = x_1309;
  } else {
    let x_1312 : f32 = u_xlat2.x;
    x_1305 = x_1312;
  }
  let x_1313 : f32 = x_1305;
  u_xlat0.x = x_1313;
  let x_1316 : bool = u_xlatb0.y;
  if (x_1316) {
    let x_1321 : f32 = u_xlat1.y;
    x_1317 = x_1321;
  } else {
    let x_1324 : f32 = u_xlat2.y;
    x_1317 = x_1324;
  }
  let x_1325 : f32 = x_1317;
  u_xlat0.y = x_1325;
  let x_1328 : bool = u_xlatb0.z;
  if (x_1328) {
    let x_1333 : f32 = u_xlat1.z;
    x_1329 = x_1333;
  } else {
    let x_1336 : f32 = u_xlat2.z;
    x_1329 = x_1336;
  }
  let x_1337 : f32 = x_1329;
  u_xlat0.z = x_1337;
  let x_1341 : vec4<f32> = u_xlat0;
  let x_1344 : vec3<f32> = max(vec3<f32>(x_1341.x, x_1341.y, x_1341.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1345 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  SV_Target0.w = 1.0f;
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

