struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

struct TemporalAAData {
  x_BlitTexture_TexelSize : vec4<f32>,
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  x_TaaFrameInfluence : f32,
}

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(1) @binding(1) var<uniform> x_53 : TemporalAAData;

@group(0) @binding(2) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_TaaAccumulationTex : texture_2d<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlatb24 : bool;
  var x_137 : f32;
  var u_xlat24 : f32;
  var u_xlatb3 : bool;
  var x_173 : vec2<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat3 : vec3<f32>;
  var x_203 : vec2<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var x_537 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, x_23, x_33);
  u_xlat0.x = x_35.x;
  let x_40 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_40) + 1.0f);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_46, 1.0f);
  let x_56 : vec4<f32> = x_53.x_BlitTexture_TexelSize;
  let x_61 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_61.x, x_61.y, x_61.x, x_61.y));
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : f32 = x_26.x_GlobalMipBias.x;
  let x_73 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_69.x, x_69.y), x_72);
  u_xlat8.x = x_73.x;
  let x_77 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_77) + 1.0f);
  let x_85 : f32 = u_xlat8.x;
  let x_87 : f32 = u_xlat0.x;
  u_xlatb16 = (x_85 < x_87);
  let x_90 : f32 = u_xlat8.x;
  let x_92 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_90, x_92);
  let x_95 : bool = u_xlatb16;
  u_xlat8.x = select(0.0f, 1.0f, x_95);
  let x_100 : vec4<f32> = x_53.x_BlitTexture_TexelSize;
  let x_105 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_100.x, x_100.y, x_100.x, x_100.y) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_105.x, x_105.y, x_105.x, x_105.y));
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_26.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_112.x, x_112.y), x_115);
  u_xlat16.x = x_116.x;
  let x_120 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_120) + 1.0f);
  let x_126 : f32 = u_xlat16.x;
  let x_128 : f32 = u_xlat0.x;
  u_xlatb24 = (x_126 < x_128);
  let x_131 : f32 = u_xlat16.x;
  let x_133 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_131, x_133);
  let x_136 : bool = u_xlatb24;
  if (x_136) {
    x_137 = 0.0f;
  } else {
    let x_142 : f32 = u_xlat8.x;
    x_137 = x_142;
  }
  let x_143 : f32 = x_137;
  u_xlat8.x = x_143;
  let x_145 : bool = u_xlatb24;
  u_xlat8.y = select(0.0f, -1.0f, x_145);
  let x_153 : vec4<f32> = u_xlat2;
  let x_156 : f32 = x_26.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_153.z, x_153.w), x_156);
  u_xlat24 = x_157.x;
  let x_159 : f32 = u_xlat24;
  u_xlat24 = (-(x_159) + 1.0f);
  let x_163 : f32 = u_xlat24;
  let x_165 : f32 = u_xlat0.x;
  u_xlatb3 = (x_163 < x_165);
  let x_167 : f32 = u_xlat24;
  let x_169 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_167, x_169);
  let x_172 : bool = u_xlatb3;
  if (x_172) {
    x_173 = vec2<f32>(-1.0f, 0.0f);
  } else {
    let x_178 : vec2<f32> = u_xlat8;
    x_173 = x_178;
  }
  let x_179 : vec2<f32> = x_173;
  u_xlat8 = x_179;
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : f32 = x_26.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_183.z, x_183.w), x_186);
  u_xlat24 = x_187.x;
  let x_189 : f32 = u_xlat24;
  u_xlat24 = (-(x_189) + 1.0f);
  let x_195 : f32 = u_xlat24;
  let x_197 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_195 < x_197);
  let x_202 : bool = u_xlatb0.x;
  if (x_202) {
    x_203 = vec2<f32>(0.0f, 1.0f);
  } else {
    let x_208 : vec2<f32> = u_xlat8;
    x_203 = x_208;
  }
  let x_209 : vec2<f32> = x_203;
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_214 : vec4<f32> = x_53.x_TaaMotionVectorTex_TexelSize;
  let x_216 : vec3<f32> = u_xlat3;
  let x_219 : vec2<f32> = vs_TEXCOORD0;
  let x_220 : vec2<f32> = ((vec2<f32>(x_214.x, x_214.y) * vec2<f32>(x_216.x, x_216.y)) + x_219);
  let x_221 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_228 : vec3<f32> = u_xlat0;
  let x_231 : f32 = x_26.x_GlobalMipBias.x;
  let x_232 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, vec2<f32>(x_228.x, x_228.y), x_231);
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_234 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_233.x, x_233.y, x_234.z);
  let x_236 : vec3<f32> = u_xlat0;
  let x_239 : vec2<f32> = vs_TEXCOORD0;
  u_xlat16 = (-(vec2<f32>(x_236.x, x_236.y)) + x_239);
  let x_245 : vec2<f32> = u_xlat16;
  let x_247 : f32 = x_26.x_GlobalMipBias.x;
  let x_248 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, x_245, x_247);
  u_xlat3 = vec3<f32>(x_248.x, x_248.y, x_248.z);
  let x_250 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec2<f32>(x_250.x, x_250.z), vec2<f32>(0.5f, -0.5f));
  let x_259 : f32 = u_xlat16.x;
  u_xlat4.y = (x_259 + 0.501960814f);
  let x_263 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec3<f32>(x_263.x, x_263.z, x_263.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_269 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(vec3<f32>(x_269.x, x_269.z, x_269.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_276 : f32 = u_xlat16.x;
  u_xlat4.z = (x_276 + 0.501960814f);
  let x_284 : vec4<f32> = u_xlat2;
  let x_287 : f32 = x_26.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_284.x, x_284.y), x_287);
  u_xlat3 = vec3<f32>(x_288.x, x_288.y, x_288.z);
  let x_293 : vec4<f32> = u_xlat2;
  let x_296 : f32 = x_26.x_GlobalMipBias.x;
  let x_297 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_293.z, x_293.w), x_296);
  let x_298 : vec3<f32> = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec2<f32>(x_301.x, x_301.z), vec2<f32>(0.5f, -0.5f));
  let x_307 : f32 = u_xlat16.x;
  u_xlat5.y = (x_307 + 0.501960814f);
  let x_310 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec3<f32>(x_310.x, x_310.z, x_310.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_314.x, x_314.z, x_314.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_319 : f32 = u_xlat16.x;
  u_xlat5.z = (x_319 + 0.501960814f);
  let x_325 : vec2<f32> = vs_TEXCOORD0;
  let x_327 : f32 = x_26.x_GlobalMipBias.x;
  let x_328 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_325, x_327);
  u_xlat3 = vec3<f32>(x_328.x, x_328.y, x_328.z);
  let x_330 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec2<f32>(x_330.x, x_330.z), vec2<f32>(0.5f, -0.5f));
  let x_336 : f32 = u_xlat16.x;
  u_xlat6.y = (x_336 + 0.501960814f);
  let x_339 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(vec3<f32>(x_339.x, x_339.z, x_339.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_343 : vec3<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_343.x, x_343.z, x_343.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_348 : f32 = u_xlat16.x;
  u_xlat6.z = (x_348 + 0.501960814f);
  let x_351 : vec3<f32> = u_xlat5;
  let x_352 : vec3<f32> = u_xlat6;
  u_xlat3 = min(x_351, x_352);
  let x_354 : vec3<f32> = u_xlat5;
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat5 = max(x_354, x_355);
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat16.x = dot(vec2<f32>(x_357.x, x_357.z), vec2<f32>(0.5f, -0.5f));
  let x_363 : f32 = u_xlat16.x;
  u_xlat7.y = (x_363 + 0.501960814f);
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat16.x = dot(vec3<f32>(x_366.x, x_366.z, x_366.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(vec3<f32>(x_370.x, x_370.z, x_370.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_375 : f32 = u_xlat16.x;
  u_xlat7.z = (x_375 + 0.501960814f);
  let x_378 : vec3<f32> = u_xlat3;
  let x_379 : vec3<f32> = u_xlat7;
  let x_380 : vec3<f32> = min(x_378, x_379);
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec3<f32> = u_xlat5;
  let x_384 : vec3<f32> = u_xlat7;
  u_xlat3 = max(x_383, x_384);
  let x_389 : vec4<f32> = u_xlat1;
  let x_392 : f32 = x_26.x_GlobalMipBias.x;
  let x_393 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_389.x, x_389.y), x_392);
  u_xlat5 = vec3<f32>(x_393.x, x_393.y, x_393.z);
  let x_398 : vec4<f32> = u_xlat1;
  let x_401 : f32 = x_26.x_GlobalMipBias.x;
  let x_402 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_398.z, x_398.w), x_401);
  let x_403 : vec3<f32> = vec3<f32>(x_402.x, x_402.y, x_402.z);
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec3<f32> = u_xlat5;
  u_xlat16.x = dot(vec2<f32>(x_406.x, x_406.z), vec2<f32>(0.5f, -0.5f));
  let x_411 : f32 = u_xlat16.x;
  u_xlat7.y = (x_411 + 0.501960814f);
  let x_414 : vec3<f32> = u_xlat5;
  u_xlat16.x = dot(vec3<f32>(x_414.x, x_414.z, x_414.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_418 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_418.x, x_418.z, x_418.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_423 : f32 = u_xlat16.x;
  u_xlat7.z = (x_423 + 0.501960814f);
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = u_xlat7;
  let x_429 : vec3<f32> = min(vec3<f32>(x_426.x, x_426.y, x_426.z), x_428);
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec3<f32> = u_xlat3;
  let x_433 : vec3<f32> = u_xlat7;
  u_xlat3 = max(x_432, x_433);
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(vec2<f32>(x_435.x, x_435.z), vec2<f32>(0.5f, -0.5f));
  let x_440 : f32 = u_xlat16.x;
  u_xlat5.y = (x_440 + 0.501960814f);
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(vec3<f32>(x_443.x, x_443.z, x_443.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec3<f32>(x_447.x, x_447.z, x_447.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_452 : f32 = u_xlat16.x;
  u_xlat5.z = (x_452 + 0.501960814f);
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = u_xlat5;
  let x_458 : vec3<f32> = min(vec3<f32>(x_455.x, x_455.y, x_455.z), x_457);
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec3<f32> = u_xlat3;
  let x_462 : vec3<f32> = u_xlat5;
  let x_463 : vec3<f32> = max(x_461, x_462);
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = u_xlat4;
  let x_469 : vec3<f32> = max(vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = min(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : f32 = u_xlat1.x;
  u_xlat16.x = (x_480 + 1.0f);
  let x_484 : f32 = u_xlat16.x;
  u_xlat16.x = (1.0f / x_484);
  let x_487 : vec2<f32> = u_xlat16;
  let x_489 : vec4<f32> = u_xlat1;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.x, x_487.x) * vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat6.x;
  u_xlat16.x = (x_495 + 1.0f);
  let x_499 : f32 = u_xlat16.x;
  u_xlat16.x = (1.0f / x_499);
  let x_502 : vec3<f32> = u_xlat6;
  let x_503 : vec2<f32> = u_xlat16;
  let x_506 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = ((x_502 * vec3<f32>(x_503.x, x_503.x, x_503.x)) + -(vec3<f32>(x_506.x, x_506.y, x_506.z)));
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec2<f32> = vs_TEXCOORD0;
  u_xlat16 = (x_512 + vec2<f32>(-0.5f, -0.5f));
  let x_515 : vec3<f32> = u_xlat0;
  let x_518 : vec2<f32> = u_xlat16;
  let x_519 : vec2<f32> = (-(vec2<f32>(x_515.x, x_515.y)) + x_518);
  let x_520 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_519.x, x_519.y, x_520.z);
  let x_523 : vec3<f32> = u_xlat0;
  let x_527 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f) < abs(vec4<f32>(x_523.x, x_523.y, x_523.x, x_523.x)));
  u_xlatb0 = vec2<bool>(x_527.x, x_527.y);
  let x_530 : bool = u_xlatb0.y;
  let x_532 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_530 | x_532);
  let x_536 : bool = u_xlatb0.x;
  if (x_536) {
    x_537 = 1.0f;
  } else {
    let x_543 : f32 = x_53.x_TaaFrameInfluence;
    x_537 = x_543;
  }
  let x_544 : f32 = x_537;
  u_xlat0.x = x_544;
  let x_546 : vec3<f32> = u_xlat0;
  let x_548 : vec4<f32> = u_xlat2;
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_546.x, x_546.x, x_546.x) * vec3<f32>(x_548.x, x_548.y, x_548.z)) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_555 : f32 = u_xlat0.x;
  u_xlat24 = (-(x_555) + 1.0f);
  let x_558 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_558);
  let x_560 : vec3<f32> = u_xlat0;
  let x_562 : f32 = u_xlat24;
  u_xlat8 = ((vec2<f32>(x_560.z, x_560.y) * vec2<f32>(x_562, x_562)) + vec2<f32>(-0.501960814f, -0.501960814f));
  let x_569 : f32 = u_xlat0.x;
  let x_570 : f32 = u_xlat24;
  let x_573 : f32 = u_xlat8.y;
  u_xlat1.x = ((x_569 * x_570) + -(x_573));
  let x_577 : vec3<f32> = u_xlat0;
  let x_579 : f32 = u_xlat24;
  let x_582 : vec2<f32> = u_xlat8;
  let x_584 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.x) * vec2<f32>(x_579, x_579)) + vec2<f32>(x_582.y, x_582.x));
  let x_585 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_584.x, x_585.y, x_584.y);
  let x_590 : f32 = u_xlat8.x;
  let x_593 : f32 = u_xlat1.x;
  SV_Target0.z = (-(x_590) + x_593);
  let x_598 : f32 = u_xlat8.x;
  let x_601 : f32 = u_xlat0.x;
  SV_Target0.x = (-(x_598) + x_601);
  let x_605 : f32 = u_xlat0.z;
  SV_Target0.y = x_605;
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

