diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr = array<strided_arr, 9u>;

struct TemporalAAData {
  /* @offset(0) */
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_TaaFilterWeights : Arr,
  /* @offset(176) */
  x_TaaFrameInfluence : f32,
  /* @offset(180) */
  x_TaaVarianceClampScale : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb0 : vec2<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_216 : TemporalAAData;

@group(0) @binding(2) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_TaaAccumulationTex : texture_2d<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_136 : f32;
  var x_173 : vec2<f32>;
  var x_203 : vec2<f32>;
  var x_431 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0.x = x_35.x;
  let x_40 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_40) + 1.0f);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_46, 1.0f);
  let x_54 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_59.x, x_59.y, x_59.x, x_59.y));
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : f32 = x_27.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_67.x, x_67.y), x_70);
  u_xlat7.x = x_71.x;
  let x_75 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_75) + 1.0f);
  let x_83 : f32 = u_xlat7.x;
  let x_85 : f32 = u_xlat0.x;
  u_xlatb14 = (x_83 < x_85);
  let x_88 : f32 = u_xlat7.x;
  let x_90 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_88, x_90);
  let x_93 : bool = u_xlatb14;
  u_xlat7.x = select(0.0f, 1.0f, x_93);
  let x_98 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_103 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_98.x, x_98.y, x_98.x, x_98.y) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_103.x, x_103.y, x_103.x, x_103.y));
  let x_110 : vec4<f32> = u_xlat2;
  let x_113 : f32 = x_27.x_GlobalMipBias.x;
  let x_114 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_110.x, x_110.y), x_113);
  u_xlat14.x = x_114.x;
  let x_118 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_118) + 1.0f);
  let x_124 : f32 = u_xlat14.x;
  let x_126 : f32 = u_xlat0.x;
  u_xlatb21 = (x_124 < x_126);
  let x_129 : f32 = u_xlat14.x;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_129, x_131);
  let x_134 : bool = u_xlatb21;
  if (x_134) {
    x_136 = 0.0f;
  } else {
    let x_141 : f32 = u_xlat7.x;
    x_136 = x_141;
  }
  let x_142 : f32 = x_136;
  u_xlat7.x = x_142;
  let x_144 : bool = u_xlatb21;
  u_xlat7.y = select(0.0f, -1.0f, x_144);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : f32 = x_27.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_152.z, x_152.w), x_155);
  u_xlat21 = x_156.x;
  let x_158 : f32 = u_xlat21;
  u_xlat21 = (-(x_158) + 1.0f);
  let x_162 : f32 = u_xlat21;
  let x_164 : f32 = u_xlat0.x;
  u_xlatb3 = (x_162 < x_164);
  let x_166 : f32 = u_xlat21;
  let x_168 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_166, x_168);
  let x_171 : bool = u_xlatb3;
  if (x_171) {
    x_173 = vec2<f32>(-1.0f, 0.0f);
  } else {
    let x_178 : vec2<f32> = u_xlat7;
    x_173 = x_178;
  }
  let x_179 : vec2<f32> = x_173;
  u_xlat7 = x_179;
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : f32 = x_27.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_183.z, x_183.w), x_186);
  u_xlat21 = x_187.x;
  let x_189 : f32 = u_xlat21;
  u_xlat21 = (-(x_189) + 1.0f);
  let x_195 : f32 = u_xlat21;
  let x_197 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_195 < x_197);
  let x_202 : bool = u_xlatb0.x;
  if (x_202) {
    x_203 = vec2<f32>(0.0f, 1.0f);
  } else {
    let x_208 : vec2<f32> = u_xlat7;
    x_203 = x_208;
  }
  let x_209 : vec2<f32> = x_203;
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_218 : vec4<f32> = x_216.x_TaaMotionVectorTex_TexelSize;
  let x_220 : vec3<f32> = u_xlat3;
  let x_223 : vec2<f32> = vs_TEXCOORD0;
  let x_224 : vec2<f32> = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_220.x, x_220.y)) + x_223);
  let x_225 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_232 : vec3<f32> = u_xlat0;
  let x_235 : f32 = x_27.x_GlobalMipBias.x;
  let x_236 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, vec2<f32>(x_232.x, x_232.y), x_235);
  let x_237 : vec2<f32> = vec2<f32>(x_236.x, x_236.y);
  let x_238 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_237.x, x_237.y, x_238.z);
  let x_240 : vec3<f32> = u_xlat0;
  let x_243 : vec2<f32> = vs_TEXCOORD0;
  u_xlat14 = (-(vec2<f32>(x_240.x, x_240.y)) + x_243);
  let x_249 : vec2<f32> = u_xlat14;
  let x_251 : f32 = x_27.x_GlobalMipBias.x;
  let x_252 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, x_249, x_251);
  u_xlat3 = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : f32 = x_27.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_259.z, x_259.w), x_262);
  u_xlat4 = vec3<f32>(x_263.x, x_263.y, x_263.z);
  let x_268 : vec4<f32> = u_xlat2;
  let x_271 : f32 = x_27.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_268.x, x_268.y), x_271);
  let x_273 : vec3<f32> = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_280 : vec2<f32> = vs_TEXCOORD0;
  let x_282 : f32 = x_27.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_280, x_282);
  u_xlat5 = vec3<f32>(x_283.x, x_283.y, x_283.z);
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat6 = min(vec3<f32>(x_286.x, x_286.y, x_286.z), x_288);
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = u_xlat5;
  let x_293 : vec3<f32> = max(vec3<f32>(x_290.x, x_290.y, x_290.z), x_292);
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec3<f32> = u_xlat4;
  let x_299 : vec3<f32> = max(vec3<f32>(x_296.x, x_296.y, x_296.z), x_298);
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat4;
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat4 = min(x_302, x_303);
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : f32 = x_27.x_GlobalMipBias.x;
  let x_312 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_308.x, x_308.y), x_311);
  u_xlat6 = vec3<f32>(x_312.x, x_312.y, x_312.z);
  let x_317 : vec4<f32> = u_xlat1;
  let x_320 : f32 = x_27.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_317.z, x_317.w), x_320);
  let x_322 : vec3<f32> = vec3<f32>(x_321.x, x_321.y, x_321.z);
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec3<f32> = u_xlat4;
  let x_326 : vec3<f32> = u_xlat6;
  u_xlat4 = min(x_325, x_326);
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec3<f32> = u_xlat6;
  let x_331 : vec3<f32> = max(vec3<f32>(x_328.x, x_328.y, x_328.z), x_330);
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = max(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : vec3<f32> = u_xlat4;
  let x_344 : vec3<f32> = min(vec3<f32>(x_341.x, x_341.y, x_341.z), x_343);
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = u_xlat3;
  let x_350 : vec3<f32> = max(vec3<f32>(x_347.x, x_347.y, x_347.z), x_349);
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = min(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat14.x = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_369 : f32 = u_xlat14.x;
  u_xlat14.x = (x_369 + 1.0f);
  let x_373 : f32 = u_xlat14.x;
  u_xlat14.x = (1.0f / x_373);
  let x_376 : vec2<f32> = u_xlat14;
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat14.x = dot(x_383, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_387 : f32 = u_xlat14.x;
  u_xlat14.x = (x_387 + 1.0f);
  let x_391 : f32 = u_xlat14.x;
  u_xlat14.x = (1.0f / x_391);
  let x_394 : vec3<f32> = u_xlat5;
  let x_395 : vec2<f32> = u_xlat14;
  let x_398 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = ((x_394 * vec3<f32>(x_395.x, x_395.x, x_395.x)) + -(vec3<f32>(x_398.x, x_398.y, x_398.z)));
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec2<f32> = vs_TEXCOORD0;
  u_xlat14 = (x_404 + vec2<f32>(-0.5f, -0.5f));
  let x_408 : vec3<f32> = u_xlat0;
  let x_411 : vec2<f32> = u_xlat14;
  let x_412 : vec2<f32> = (-(vec2<f32>(x_408.x, x_408.y)) + x_411);
  let x_413 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_412.x, x_412.y, x_413.z);
  let x_417 : vec3<f32> = u_xlat0;
  let x_421 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f) < abs(vec4<f32>(x_417.x, x_417.y, x_417.x, x_417.x)));
  u_xlatb0 = vec2<bool>(x_421.x, x_421.y);
  let x_424 : bool = u_xlatb0.y;
  let x_426 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_424 | x_426);
  let x_430 : bool = u_xlatb0.x;
  if (x_430) {
    x_431 = 1.0f;
  } else {
    let x_437 : f32 = x_216.x_TaaFrameInfluence;
    x_431 = x_437;
  }
  let x_438 : f32 = x_431;
  u_xlat0.x = x_438;
  let x_440 : vec3<f32> = u_xlat0;
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_440.x, x_440.x, x_440.x) * vec3<f32>(x_442.x, x_442.y, x_442.z)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_448, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_450 : f32 = u_xlat21;
  u_xlat21 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_453);
  let x_455 : f32 = u_xlat21;
  let x_457 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_455, x_455, x_455) * x_457);
  let x_461 : vec3<f32> = u_xlat0;
  let x_463 : vec3<f32> = max(x_461, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_464 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
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


