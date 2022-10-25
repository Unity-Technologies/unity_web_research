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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var x_753 : f32;
  var x_765 : f32;
  var x_777 : f32;
  var x_946 : f32;
  var x_958 : f32;
  var x_970 : f32;
  var u_xlat7 : vec3<f32>;
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
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat0;
  let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec4<f32> = u_xlat2;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.y, x_648.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_654 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_662 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec4<f32> = u_xlat0;
  let x_671 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat2;
  let x_676 : vec4<f32> = u_xlat0;
  let x_678 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) / vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_697 : vec3<f32> = clamp(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_698 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_702 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_702);
  let x_704 : bool = u_xlatb21;
  if (x_704) {
    let x_707 : vec4<f32> = u_xlat0;
    let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_712 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
    let x_714 : vec4<f32> = u_xlat0;
    let x_716 : vec3<f32> = log2(vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_717 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
    let x_719 : vec4<f32> = u_xlat2;
    let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_724 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_726 : vec4<f32> = u_xlat2;
    let x_728 : vec3<f32> = exp2(vec3<f32>(x_726.x, x_726.y, x_726.z));
    let x_729 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_731 : vec4<f32> = u_xlat2;
    let x_738 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_739 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_744 : vec4<f32> = u_xlat0;
    let x_747 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.x));
    u_xlatb3 = vec3<bool>(x_747.x, x_747.y, x_747.z);
    let x_750 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_750;
    let x_752 : bool = u_xlatb3.x;
    if (x_752) {
      let x_757 : f32 = u_xlat1.x;
      x_753 = x_757;
    } else {
      let x_760 : f32 = u_xlat2.x;
      x_753 = x_760;
    }
    let x_761 : f32 = x_753;
    hlslcc_movcTemp.x = x_761;
    let x_764 : bool = u_xlatb3.y;
    if (x_764) {
      let x_769 : f32 = u_xlat1.y;
      x_765 = x_769;
    } else {
      let x_772 : f32 = u_xlat2.y;
      x_765 = x_772;
    }
    let x_773 : f32 = x_765;
    hlslcc_movcTemp.y = x_773;
    let x_776 : bool = u_xlatb3.z;
    if (x_776) {
      let x_781 : f32 = u_xlat1.z;
      x_777 = x_781;
    } else {
      let x_784 : f32 = u_xlat2.z;
      x_777 = x_784;
    }
    let x_785 : f32 = x_777;
    hlslcc_movcTemp.z = x_785;
    let x_787 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_787;
    let x_788 : vec4<f32> = u_xlat1;
    let x_791 : vec4<f32> = x_25.x_UserLut_Params;
    let x_793 : vec3<f32> = (vec3<f32>(x_788.z, x_788.x, x_788.y) * vec3<f32>(x_791.z, x_791.z, x_791.z));
    let x_794 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
    let x_797 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_797);
    let x_800 : vec4<f32> = x_25.x_UserLut_Params;
    let x_802 : vec2<f32> = (vec2<f32>(x_800.x, x_800.y) * vec2<f32>(0.5f, 0.5f));
    let x_803 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_802.x, x_803.y, x_803.z, x_802.y);
    let x_805 : vec4<f32> = u_xlat2;
    let x_808 : vec4<f32> = x_25.x_UserLut_Params;
    let x_811 : vec4<f32> = u_xlat2;
    let x_813 : vec2<f32> = ((vec2<f32>(x_805.y, x_805.z) * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_811.x, x_811.w));
    let x_814 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_814.x, x_813.x, x_813.y, x_814.w);
    let x_816 : f32 = u_xlat21;
    let x_818 : f32 = x_25.x_UserLut_Params.y;
    let x_821 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_816 * x_818) + x_821);
    let x_828 : vec4<f32> = u_xlat2;
    let x_830 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_828.x, x_828.z), 0.0f);
    let x_831 : vec3<f32> = vec3<f32>(x_830.x, x_830.y, x_830.z);
    let x_832 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
    let x_835 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_835;
    u_xlat4.y = 0.0f;
    let x_838 : vec4<f32> = u_xlat2;
    let x_840 : vec4<f32> = u_xlat4;
    let x_842 : vec2<f32> = (vec2<f32>(x_838.x, x_838.z) + vec2<f32>(x_840.x, x_840.y));
    let x_843 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
    let x_848 : vec4<f32> = u_xlat2;
    let x_850 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_848.x, x_848.y), 0.0f);
    let x_851 : vec3<f32> = vec3<f32>(x_850.x, x_850.y, x_850.z);
    let x_852 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
    let x_855 : f32 = u_xlat1.z;
    let x_857 : f32 = x_25.x_UserLut_Params.z;
    let x_859 : f32 = u_xlat21;
    u_xlat21 = ((x_855 * x_857) + -(x_859));
    let x_862 : vec4<f32> = u_xlat3;
    let x_865 : vec4<f32> = u_xlat2;
    let x_867 : vec3<f32> = (-(vec3<f32>(x_862.x, x_862.y, x_862.z)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
    let x_870 : f32 = u_xlat21;
    let x_872 : vec4<f32> = u_xlat2;
    let x_875 : vec4<f32> = u_xlat3;
    let x_877 : vec3<f32> = ((vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
    let x_880 : vec4<f32> = u_xlat1;
    let x_883 : vec4<f32> = u_xlat2;
    let x_885 : vec3<f32> = (-(vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(x_883.x, x_883.y, x_883.z));
    let x_886 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    let x_889 : vec4<f32> = x_25.x_UserLut_Params;
    let x_891 : vec4<f32> = u_xlat2;
    let x_894 : vec4<f32> = u_xlat1;
    let x_896 : vec3<f32> = ((vec3<f32>(x_889.w, x_889.w, x_889.w) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
    let x_897 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_899 : vec4<f32> = u_xlat1;
    let x_903 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_904 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
    let x_906 : vec4<f32> = u_xlat1;
    let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_911 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
    let x_913 : vec4<f32> = u_xlat3;
    let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_918 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
    let x_920 : vec4<f32> = u_xlat3;
    let x_923 : vec3<f32> = log2(abs(vec3<f32>(x_920.x, x_920.y, x_920.z)));
    let x_924 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
    let x_926 : vec4<f32> = u_xlat3;
    let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_931 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
    let x_933 : vec4<f32> = u_xlat3;
    let x_935 : vec3<f32> = exp2(vec3<f32>(x_933.x, x_933.y, x_933.z));
    let x_936 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_940 : vec4<f32> = u_xlat1;
    let x_942 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_940.x, x_940.y, x_940.z, x_940.x));
    u_xlatb1 = vec3<bool>(x_942.x, x_942.y, x_942.z);
    let x_945 : bool = u_xlatb1.x;
    if (x_945) {
      let x_950 : f32 = u_xlat2.x;
      x_946 = x_950;
    } else {
      let x_953 : f32 = u_xlat3.x;
      x_946 = x_953;
    }
    let x_954 : f32 = x_946;
    u_xlat0.x = x_954;
    let x_957 : bool = u_xlatb1.y;
    if (x_957) {
      let x_962 : f32 = u_xlat2.y;
      x_958 = x_962;
    } else {
      let x_965 : f32 = u_xlat3.y;
      x_958 = x_965;
    }
    let x_966 : f32 = x_958;
    u_xlat0.y = x_966;
    let x_969 : bool = u_xlatb1.z;
    if (x_969) {
      let x_974 : f32 = u_xlat2.z;
      x_970 = x_974;
    } else {
      let x_977 : f32 = u_xlat3.z;
      x_970 = x_977;
    }
    let x_978 : f32 = x_970;
    u_xlat0.z = x_978;
  }
  let x_980 : vec4<f32> = u_xlat0;
  let x_983 : vec4<f32> = x_25.x_Lut_Params;
  let x_985 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_983.z, x_983.z, x_983.z));
  let x_986 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_985.z);
  let x_989 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_989);
  let x_992 : vec4<f32> = x_25.x_Lut_Params;
  let x_994 : vec2<f32> = (vec2<f32>(x_992.x, x_992.y) * vec2<f32>(0.5f, 0.5f));
  let x_995 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat0;
  let x_1000 : vec4<f32> = x_25.x_Lut_Params;
  let x_1003 : vec4<f32> = u_xlat1;
  let x_1005 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.y) * vec2<f32>(x_1000.x, x_1000.y)) + vec2<f32>(x_1003.x, x_1003.y));
  let x_1006 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1006.x, x_1005.x, x_1005.y, x_1006.w);
  let x_1008 : f32 = u_xlat21;
  let x_1010 : f32 = x_25.x_Lut_Params.y;
  let x_1013 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1008 * x_1010) + x_1013);
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1020.x, x_1020.z), 0.0f);
  let x_1023 : vec3<f32> = vec3<f32>(x_1022.x, x_1022.y, x_1022.z);
  let x_1024 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1027 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1027;
  u_xlat0.y = 0.0f;
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1034 : vec2<f32> = (vec2<f32>(x_1030.x, x_1030.y) + vec2<f32>(x_1032.x, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1042 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1040.x, x_1040.y), 0.0f);
  let x_1043 : vec3<f32> = vec3<f32>(x_1042.x, x_1042.y, x_1042.z);
  let x_1044 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1047 : f32 = u_xlat0.z;
  let x_1049 : f32 = x_25.x_Lut_Params.z;
  let x_1051 : f32 = u_xlat21;
  u_xlat0.x = ((x_1047 * x_1049) + -(x_1051));
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1059 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1056.x, x_1056.y, x_1056.z)) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1064 : vec3<f32> = u_xlat7;
  let x_1066 : vec4<f32> = u_xlat2;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.x, x_1062.x) * x_1064) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec2<f32> = vs_TEXCOORD0;
  let x_1074 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1078 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1080 : vec2<f32> = ((x_1071 * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1078.z, x_1078.w));
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
  let x_1088 : vec4<f32> = u_xlat1;
  let x_1091 : f32 = x_25.x_GlobalMipBias.x;
  let x_1092 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1088.x, x_1088.y), x_1091);
  u_xlat21 = x_1092.w;
  let x_1094 : f32 = u_xlat21;
  u_xlat21 = (x_1094 + -0.5f);
  let x_1096 : f32 = u_xlat21;
  let x_1097 : f32 = u_xlat21;
  u_xlat21 = (x_1096 + x_1097);
  let x_1099 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1099.x, x_1099.y, x_1099.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1108 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1108);
  let x_1113 : f32 = x_25.x_Grain_Params.y;
  let x_1115 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1113 * -(x_1115)) + 1.0f);
  let x_1120 : f32 = u_xlat21;
  let x_1122 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1120, x_1120, x_1120) * vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec3<f32> = u_xlat8;
  let x_1128 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1125 * vec3<f32>(x_1128.x, x_1128.x, x_1128.x));
  let x_1133 : vec3<f32> = u_xlat8;
  let x_1134 : vec4<f32> = u_xlat1;
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1139 : vec3<f32> = ((x_1133 * vec3<f32>(x_1134.x, x_1134.x, x_1134.x)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
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

