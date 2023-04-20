diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

alias Arr_1 = array<mat4x4<f32>, 2u>;

alias Arr_2 = array<vec4<f32>, 2u>;

alias Arr_3 = array<vec4<f32>, 2u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(32) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(48) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(128) */
  x_CameraDepthTexture_TexelSize : vec4<f32>,
  /* @offset(144) */
  x_SSAOParams : vec4<f32>,
  /* @offset(160) */
  x_CameraViewTopLeftCorner : Arr_3,
  /* @offset(192) */
  x_CameraViewProjections : Arr_1,
  /* @offset(320) */
  x_ProjectionParams2 : vec4<f32>,
  /* @offset(336) */
  x_CameraViewXExtent : Arr_3,
  /* @offset(368) */
  x_CameraViewYExtent : Arr_3,
}

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_20 : PGlobals;

var<private> u_xlat16 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthTexture : sampler;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlat7 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat12 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlat27 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_266 : vec3<f32>;
  var x_536 : vec3<f32>;
  var x_783 : vec3<f32>;
  var x_1048 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_25 : vec4<f32> = x_20.x_CameraDepthTexture_TexelSize;
  u_xlat0 = ((-(vec2<f32>(x_25.x, x_25.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_35 : vec2<f32> = u_xlat0;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  u_xlat16 = min(x_35, x_38);
  let x_40 : vec2<f32> = u_xlat16;
  let x_43 : vec4<f32> = x_20.x_RTHandleScale;
  u_xlat16 = (x_40 * vec2<f32>(x_43.x, x_43.y));
  let x_56 : vec2<f32> = u_xlat16;
  let x_61 : f32 = x_20.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_56, x_61);
  u_xlat16.x = x_62.x;
  let x_70 : f32 = u_xlat16.x;
  u_xlatb24 = (x_70 < 0.00000999999974737875f);
  let x_73 : bool = u_xlatb24;
  if (x_73) {
    SV_Target0 = vec4<f32>(0.0f, 0.5f, 0.5f, 0.5f);
    return;
  }
  let x_83 : f32 = x_20.x_ZBufferParams.z;
  let x_85 : f32 = u_xlat16.x;
  let x_89 : f32 = x_20.x_ZBufferParams.w;
  u_xlat16.x = ((x_83 * x_85) + x_89);
  let x_93 : f32 = u_xlat16.x;
  u_xlat16.x = (1.0f / x_93);
  let x_98 : f32 = x_20.x_SSAOParams.w;
  let x_100 : f32 = u_xlat16.x;
  u_xlatb24 = (x_98 < x_100);
  let x_102 : bool = u_xlatb24;
  if (x_102) {
    SV_Target0 = vec4<f32>(0.0f, 0.5f, 0.5f, 0.5f);
    return;
  }
  let x_110 : f32 = vs_TEXCOORD0.y;
  u_xlat24 = (-(x_110) + 1.0f);
  let x_117 : f32 = u_xlat16.x;
  let x_120 : f32 = x_20.x_ProjectionParams2.x;
  u_xlat1.x = (x_117 * x_120);
  let x_127 : vec4<f32> = x_20.x_CameraViewXExtent[0i];
  let x_129 : vec2<f32> = vs_TEXCOORD0;
  let x_134 : vec4<f32> = x_20.x_CameraViewTopLeftCorner[0i];
  u_xlat9 = ((vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_129.x, x_129.x, x_129.x)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec4<f32> = x_20.x_CameraViewYExtent[0i];
  let x_141 : f32 = u_xlat24;
  let x_144 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141, x_141, x_141)) + x_144);
  let x_146 : vec3<f32> = u_xlat1;
  let x_148 : vec3<f32> = u_xlat9;
  u_xlat1 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_151 : vec3<f32> = u_xlat1;
  u_xlat2 = dpdyCoarse(vec3<f32>(x_151.z, x_151.x, x_151.y));
  let x_155 : vec3<f32> = u_xlat1;
  u_xlat3 = dpdxCoarse(vec3<f32>(x_155.y, x_155.z, x_155.x));
  let x_160 : vec3<f32> = u_xlat2;
  let x_161 : vec3<f32> = u_xlat3;
  let x_162 : vec3<f32> = (x_160 * x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec3<f32> = u_xlat2;
  let x_167 : vec3<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat2 = ((vec3<f32>(x_165.z, x_165.x, x_165.y) * vec3<f32>(x_167.y, x_167.z, x_167.x)) + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec3<f32> = u_xlat2;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_174, x_175);
  let x_177 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_177);
  let x_179 : f32 = u_xlat24;
  let x_181 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_179, x_179, x_179) * x_181);
  let x_183 : vec2<f32> = vs_TEXCOORD0;
  let x_185 : vec4<f32> = x_20.x_ScaledScreenParams;
  let x_187 : vec2<f32> = (x_183 * vec2<f32>(x_185.x, x_185.y));
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_187.x, x_187.y, x_188.z);
  let x_191 : vec3<f32> = u_xlat3;
  let x_194 : vec4<f32> = x_20.x_SSAOParams;
  u_xlat19 = (vec2<f32>(x_191.x, x_191.y) * vec2<f32>(x_194.z, x_194.z));
  let x_197 : vec2<f32> = u_xlat19;
  u_xlat24 = dot(x_197, vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_202 : f32 = u_xlat24;
  u_xlat24 = fract(x_202);
  let x_204 : f32 = u_xlat24;
  u_xlat24 = (x_204 * 52.98291778564453125f);
  let x_207 : f32 = u_xlat24;
  u_xlat24 = fract(x_207);
  let x_210 : f32 = u_xlat24;
  u_xlat25 = fract(x_210);
  let x_212 : f32 = u_xlat25;
  u_xlat4.z = ((x_212 * 2.0f) + -1.0f);
  let x_218 : f32 = u_xlat24;
  u_xlat24 = (x_218 + 0.9296875f);
  let x_221 : f32 = u_xlat24;
  u_xlat24 = (x_221 * 6.28318548202514648438f);
  let x_225 : f32 = u_xlat4.z;
  let x_228 : f32 = u_xlat4.z;
  u_xlat25 = ((-(x_225) * x_228) + 1.0f);
  let x_231 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_231);
  let x_234 : f32 = u_xlat24;
  u_xlat5.x = sin(x_234);
  let x_238 : f32 = u_xlat24;
  u_xlat6.x = cos(x_238);
  let x_241 : f32 = u_xlat25;
  let x_243 : f32 = u_xlat6.x;
  u_xlat4.x = (x_241 * x_243);
  let x_246 : f32 = u_xlat25;
  let x_248 : f32 = u_xlat5.x;
  u_xlat4.y = (x_246 * x_248);
  let x_251 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(-(x_257), vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : f32 = u_xlat24;
  u_xlatb24 = (x_262 >= 0.0f);
  let x_264 : bool = u_xlatb24;
  if (x_264) {
    let x_269 : vec4<f32> = u_xlat4;
    x_266 = -(vec3<f32>(x_269.x, x_269.y, x_269.z));
  } else {
    let x_273 : vec4<f32> = u_xlat4;
    x_266 = vec3<f32>(x_273.x, x_273.y, x_273.z);
  }
  let x_275 : vec3<f32> = x_266;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat4;
  let x_281 : vec4<f32> = x_20.x_SSAOParams;
  let x_284 : vec3<f32> = u_xlat1;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_281.y, x_281.y, x_281.y)) + x_284);
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = x_20.x_CameraViewProjections[0i][1i];
  u_xlat19 = (vec2<f32>(x_288.y, x_288.y) * vec2<f32>(x_292.x, x_292.y));
  let x_296 : vec4<f32> = x_20.x_CameraViewProjections[0i][0i];
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_296.x, x_296.y) * vec2<f32>(x_298.x, x_298.x)) + x_301);
  let x_304 : vec4<f32> = x_20.x_CameraViewProjections[0i][2i];
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_304.x, x_304.y) * vec2<f32>(x_306.z, x_306.z)) + x_309);
  let x_313 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat5.x = x_313;
  let x_316 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat5.y = x_316;
  let x_319 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat5.z = x_319;
  let x_321 : vec3<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat24;
  u_xlat25 = (1.0f / -(x_325));
  let x_328 : vec2<f32> = u_xlat19;
  let x_329 : f32 = u_xlat25;
  u_xlat19 = ((x_328 * vec2<f32>(x_329, x_329)) + vec2<f32>(1.0f, 1.0f));
  let x_333 : vec2<f32> = u_xlat19;
  u_xlat19 = (x_333 * vec2<f32>(0.5f, 0.5f));
  let x_335 : vec2<f32> = u_xlat19;
  u_xlat19 = clamp(x_335, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_339 : vec2<f32> = u_xlat0;
  let x_340 : vec2<f32> = u_xlat19;
  let x_341 : vec2<f32> = min(x_339, x_340);
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_20.x_RTHandleScale;
  let x_349 : vec2<f32> = (vec2<f32>(x_344.x, x_344.y) * vec2<f32>(x_347.x, x_347.y));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : f32 = x_20.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_355.x, x_355.y), x_358);
  u_xlat25 = x_359.x;
  let x_363 : f32 = x_20.x_ZBufferParams.z;
  let x_364 : f32 = u_xlat25;
  let x_367 : f32 = x_20.x_ZBufferParams.w;
  u_xlat26 = ((x_363 * x_364) + x_367);
  let x_369 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_369);
  let x_371 : f32 = u_xlat24;
  let x_373 : f32 = u_xlat26;
  u_xlat24 = (-(x_371) + -(x_373));
  let x_376 : f32 = u_xlat24;
  let x_379 : f32 = x_20.x_SSAOParams.y;
  u_xlatb24 = (abs(x_376) < x_379);
  let x_381 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_381);
  let x_384 : f32 = u_xlat25;
  u_xlatb25 = (0.00000999999974737875f < x_384);
  let x_386 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_386);
  let x_388 : f32 = u_xlat24;
  let x_389 : f32 = u_xlat25;
  u_xlat24 = (x_388 * x_389);
  let x_392 : f32 = u_xlat19.y;
  u_xlat25 = (-(x_392) + 1.0f);
  let x_395 : f32 = u_xlat26;
  let x_397 : f32 = x_20.x_ProjectionParams2.x;
  u_xlat26 = (x_395 * x_397);
  let x_400 : vec4<f32> = x_20.x_CameraViewXExtent[0i];
  let x_402 : vec2<f32> = u_xlat19;
  let x_406 : vec4<f32> = x_20.x_CameraViewTopLeftCorner[0i];
  let x_408 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.x, x_402.x)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : vec4<f32> = x_20.x_CameraViewYExtent[0i];
  let x_414 : f32 = u_xlat25;
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414, x_414, x_414)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : f32 = u_xlat26;
  let x_427 : vec3<f32> = u_xlat1;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424, x_424, x_424)) + -(x_427));
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), x_434);
  let x_437 : f32 = u_xlat16.x;
  let x_441 : f32 = u_xlat25;
  u_xlat25 = ((-(x_437) * 0.00400000018998980522f) + x_441);
  let x_443 : f32 = u_xlat25;
  u_xlat25 = max(x_443, 0.0f);
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : f32 = u_xlat26;
  u_xlat26 = (x_450 + 0.00009999999747378752f);
  let x_453 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_453);
  let x_455 : f32 = u_xlat25;
  let x_456 : f32 = u_xlat26;
  u_xlat25 = (x_455 * x_456);
  let x_458 : vec3<f32> = u_xlat3;
  let x_461 : vec4<f32> = x_20.x_SSAOParams;
  u_xlat4 = ((vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) * vec4<f32>(x_461.z, x_461.z, x_461.z, x_461.z)) + vec4<f32>(2.08299994468688964844f, 4.86700010299682617188f, 4.16599988937377929688f, 9.73400020599365234375f));
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec2<f32>(x_470.x, x_470.y), vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_473 : f32 = u_xlat26;
  u_xlat26 = fract(x_473);
  let x_475 : f32 = u_xlat26;
  u_xlat26 = (x_475 * 52.98291778564453125f);
  let x_477 : f32 = u_xlat26;
  u_xlat26 = fract(x_477);
  let x_479 : f32 = u_xlat26;
  u_xlat19 = (vec2<f32>(x_479, x_479) + vec2<f32>(0.33984375f, 0.76171875f));
  let x_486 : f32 = u_xlat19.x;
  u_xlat26 = fract(x_486);
  let x_488 : f32 = u_xlat26;
  u_xlat6.z = ((x_488 * 2.0f) + -1.0f);
  let x_493 : f32 = u_xlat19.y;
  u_xlat26 = (x_493 * 6.28318548202514648438f);
  let x_496 : f32 = u_xlat6.z;
  let x_499 : f32 = u_xlat6.z;
  u_xlat19.x = ((-(x_496) * x_499) + 1.0f);
  let x_504 : f32 = u_xlat19.x;
  u_xlat19.x = sqrt(x_504);
  let x_507 : f32 = u_xlat26;
  u_xlat4.x = sin(x_507);
  let x_511 : f32 = u_xlat26;
  u_xlat7 = cos(x_511);
  let x_514 : f32 = u_xlat19.x;
  let x_515 : f32 = u_xlat7;
  u_xlat6.x = (x_514 * x_515);
  let x_519 : f32 = u_xlat19.x;
  let x_521 : f32 = u_xlat4.x;
  u_xlat6.y = (x_519 * x_521);
  let x_524 : vec3<f32> = u_xlat6;
  u_xlat6 = (x_524 * vec3<f32>(0.70710676908493041992f, 0.70710676908493041992f, 0.70710676908493041992f));
  let x_528 : vec3<f32> = u_xlat2;
  let x_530 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(-(x_528), x_530);
  let x_533 : f32 = u_xlat26;
  u_xlatb26 = (x_533 >= 0.0f);
  let x_535 : bool = u_xlatb26;
  if (x_535) {
    let x_539 : vec3<f32> = u_xlat6;
    x_536 = -(x_539);
  } else {
    let x_542 : vec3<f32> = u_xlat6;
    x_536 = x_542;
  }
  let x_543 : vec3<f32> = x_536;
  u_xlat6 = x_543;
  let x_544 : vec3<f32> = u_xlat6;
  let x_546 : vec4<f32> = x_20.x_SSAOParams;
  let x_549 : vec3<f32> = u_xlat1;
  u_xlat6 = ((x_544 * vec3<f32>(x_546.y, x_546.y, x_546.y)) + x_549);
  let x_551 : vec3<f32> = u_xlat6;
  let x_554 : vec4<f32> = x_20.x_CameraViewProjections[0i][1i];
  u_xlat19 = (vec2<f32>(x_551.y, x_551.y) * vec2<f32>(x_554.x, x_554.y));
  let x_558 : vec4<f32> = x_20.x_CameraViewProjections[0i][0i];
  let x_560 : vec3<f32> = u_xlat6;
  let x_563 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_558.x, x_558.y) * vec2<f32>(x_560.x, x_560.x)) + x_563);
  let x_566 : vec4<f32> = x_20.x_CameraViewProjections[0i][2i];
  let x_568 : vec3<f32> = u_xlat6;
  let x_571 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_568.z, x_568.z)) + x_571);
  let x_573 : vec3<f32> = u_xlat5;
  let x_574 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat26;
  u_xlat4.x = (1.0f / -(x_576));
  let x_580 : vec2<f32> = u_xlat19;
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat19 = ((x_580 * vec2<f32>(x_581.x, x_581.x)) + vec2<f32>(1.0f, 1.0f));
  let x_585 : vec2<f32> = u_xlat19;
  u_xlat19 = (x_585 * vec2<f32>(0.5f, 0.5f));
  let x_587 : vec2<f32> = u_xlat19;
  u_xlat19 = clamp(x_587, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_591 : vec2<f32> = u_xlat0;
  let x_592 : vec2<f32> = u_xlat19;
  let x_593 : vec2<f32> = min(x_591, x_592);
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = x_20.x_RTHandleScale;
  let x_601 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) * vec2<f32>(x_599.x, x_599.y));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_607 : vec4<f32> = u_xlat4;
  let x_610 : f32 = x_20.x_GlobalMipBias.x;
  let x_611 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_607.x, x_607.y), x_610);
  u_xlat4.x = x_611.x;
  let x_616 : f32 = x_20.x_ZBufferParams.z;
  let x_618 : f32 = u_xlat4.x;
  let x_621 : f32 = x_20.x_ZBufferParams.w;
  u_xlat12 = ((x_616 * x_618) + x_621);
  let x_623 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_623);
  let x_625 : f32 = u_xlat26;
  let x_627 : f32 = u_xlat12;
  u_xlat26 = (-(x_625) + -(x_627));
  let x_630 : f32 = u_xlat26;
  let x_633 : f32 = x_20.x_SSAOParams.y;
  u_xlatb26 = (abs(x_630) < x_633);
  let x_635 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_635);
  let x_639 : f32 = u_xlat4.x;
  u_xlatb4 = (0.00000999999974737875f < x_639);
  let x_641 : bool = u_xlatb4;
  u_xlat4.x = select(0.0f, 1.0f, x_641);
  let x_644 : f32 = u_xlat26;
  let x_646 : f32 = u_xlat4.x;
  u_xlat26 = (x_644 * x_646);
  let x_650 : f32 = u_xlat19.y;
  u_xlat27 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat12;
  let x_655 : f32 = x_20.x_ProjectionParams2.x;
  u_xlat4.x = (x_653 * x_655);
  let x_659 : vec4<f32> = x_20.x_CameraViewXExtent[0i];
  let x_661 : vec2<f32> = u_xlat19;
  let x_665 : vec4<f32> = x_20.x_CameraViewTopLeftCorner[0i];
  u_xlat6 = ((vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661.x, x_661.x, x_661.x)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_669 : vec4<f32> = x_20.x_CameraViewYExtent[0i];
  let x_671 : f32 = u_xlat27;
  let x_674 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(x_671, x_671, x_671)) + x_674);
  let x_676 : vec3<f32> = u_xlat6;
  let x_677 : vec4<f32> = u_xlat4;
  let x_680 : vec3<f32> = u_xlat1;
  u_xlat6 = ((x_676 * vec3<f32>(x_677.x, x_677.x, x_677.x)) + -(x_680));
  let x_683 : vec3<f32> = u_xlat6;
  let x_684 : vec3<f32> = u_xlat2;
  u_xlat19.x = dot(x_683, x_684);
  let x_688 : f32 = u_xlat16.x;
  let x_692 : f32 = u_xlat19.x;
  u_xlat19.x = ((-(x_688) * 0.00400000018998980522f) + x_692);
  let x_696 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_696, 0.0f);
  let x_699 : vec3<f32> = u_xlat6;
  let x_700 : vec3<f32> = u_xlat6;
  u_xlat27 = dot(x_699, x_700);
  let x_702 : f32 = u_xlat27;
  u_xlat27 = (x_702 + 0.00009999999747378752f);
  let x_704 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_704);
  let x_706 : f32 = u_xlat27;
  let x_708 : f32 = u_xlat19.x;
  u_xlat19.x = (x_706 * x_708);
  let x_711 : f32 = u_xlat26;
  let x_713 : f32 = u_xlat19.x;
  u_xlat26 = (x_711 * x_713);
  let x_715 : f32 = u_xlat25;
  let x_716 : f32 = u_xlat24;
  let x_718 : f32 = u_xlat26;
  u_xlat24 = ((x_715 * x_716) + x_718);
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec2<f32>(x_720.z, x_720.w), vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_723 : f32 = u_xlat25;
  u_xlat25 = fract(x_723);
  let x_725 : f32 = u_xlat25;
  u_xlat25 = (x_725 * 52.98291778564453125f);
  let x_727 : f32 = u_xlat25;
  u_xlat25 = fract(x_727);
  let x_729 : f32 = u_xlat25;
  u_xlat19 = (vec2<f32>(x_729, x_729) + vec2<f32>(0.75390625f, 0.13333329558372497559f));
  let x_736 : f32 = u_xlat19.x;
  u_xlat25 = fract(x_736);
  let x_738 : f32 = u_xlat25;
  u_xlat4.z = ((x_738 * 2.0f) + -1.0f);
  let x_743 : f32 = u_xlat19.y;
  u_xlat25 = (x_743 * 6.28318548202514648438f);
  let x_746 : f32 = u_xlat4.z;
  let x_749 : f32 = u_xlat4.z;
  u_xlat26 = ((-(x_746) * x_749) + 1.0f);
  let x_752 : f32 = u_xlat26;
  u_xlat26 = sqrt(x_752);
  let x_754 : f32 = u_xlat25;
  u_xlat6.x = sin(x_754);
  let x_757 : f32 = u_xlat25;
  u_xlat7 = cos(x_757);
  let x_759 : f32 = u_xlat26;
  let x_760 : f32 = u_xlat7;
  u_xlat4.x = (x_759 * x_760);
  let x_763 : f32 = u_xlat26;
  let x_765 : f32 = u_xlat6.x;
  u_xlat4.y = (x_763 * x_765);
  let x_768 : vec4<f32> = u_xlat4;
  let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(0.86602538824081420898f, 0.86602538824081420898f, 0.86602538824081420898f));
  let x_773 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat2;
  let x_777 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(-(x_775), vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : f32 = u_xlat25;
  u_xlatb25 = (x_780 >= 0.0f);
  let x_782 : bool = u_xlatb25;
  if (x_782) {
    let x_786 : vec4<f32> = u_xlat4;
    x_783 = -(vec3<f32>(x_786.x, x_786.y, x_786.z));
  } else {
    let x_790 : vec4<f32> = u_xlat4;
    x_783 = vec3<f32>(x_790.x, x_790.y, x_790.z);
  }
  let x_792 : vec3<f32> = x_783;
  let x_793 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat4;
  let x_798 : vec4<f32> = x_20.x_SSAOParams;
  let x_801 : vec3<f32> = u_xlat1;
  let x_802 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_798.y, x_798.y, x_798.y)) + x_801);
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat4;
  let x_808 : vec4<f32> = x_20.x_CameraViewProjections[0i][1i];
  u_xlat19 = (vec2<f32>(x_805.y, x_805.y) * vec2<f32>(x_808.x, x_808.y));
  let x_812 : vec4<f32> = x_20.x_CameraViewProjections[0i][0i];
  let x_814 : vec4<f32> = u_xlat4;
  let x_817 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_812.x, x_812.y) * vec2<f32>(x_814.x, x_814.x)) + x_817);
  let x_820 : vec4<f32> = x_20.x_CameraViewProjections[0i][2i];
  let x_822 : vec4<f32> = u_xlat4;
  let x_825 : vec2<f32> = u_xlat19;
  u_xlat19 = ((vec2<f32>(x_820.x, x_820.y) * vec2<f32>(x_822.z, x_822.z)) + x_825);
  let x_827 : vec3<f32> = u_xlat5;
  let x_828 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(x_827, vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat25;
  u_xlat26 = (1.0f / -(x_831));
  let x_834 : vec2<f32> = u_xlat19;
  let x_835 : f32 = u_xlat26;
  u_xlat19 = ((x_834 * vec2<f32>(x_835, x_835)) + vec2<f32>(1.0f, 1.0f));
  let x_839 : vec2<f32> = u_xlat19;
  u_xlat19 = (x_839 * vec2<f32>(0.5f, 0.5f));
  let x_841 : vec2<f32> = u_xlat19;
  u_xlat19 = clamp(x_841, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_845 : vec2<f32> = u_xlat0;
  let x_846 : vec2<f32> = u_xlat19;
  let x_847 : vec2<f32> = min(x_845, x_846);
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_853 : vec4<f32> = x_20.x_RTHandleScale;
  let x_855 : vec2<f32> = (vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_853.x, x_853.y));
  let x_856 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_864 : f32 = x_20.x_GlobalMipBias.x;
  let x_865 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_861.x, x_861.y), x_864);
  u_xlat26 = x_865.x;
  let x_868 : f32 = x_20.x_ZBufferParams.z;
  let x_869 : f32 = u_xlat26;
  let x_872 : f32 = x_20.x_ZBufferParams.w;
  u_xlat4.x = ((x_868 * x_869) + x_872);
  let x_876 : f32 = u_xlat4.x;
  u_xlat4.x = (1.0f / x_876);
  let x_879 : f32 = u_xlat25;
  let x_882 : f32 = u_xlat4.x;
  u_xlat25 = (-(x_879) + -(x_882));
  let x_885 : f32 = u_xlat25;
  let x_888 : f32 = x_20.x_SSAOParams.y;
  u_xlatb25 = (abs(x_885) < x_888);
  let x_890 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_890);
  let x_892 : f32 = u_xlat26;
  u_xlatb26 = (0.00000999999974737875f < x_892);
  let x_894 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_894);
  let x_896 : f32 = u_xlat25;
  let x_897 : f32 = u_xlat26;
  u_xlat25 = (x_896 * x_897);
  let x_900 : f32 = u_xlat19.y;
  u_xlat26 = (-(x_900) + 1.0f);
  let x_904 : f32 = u_xlat4.x;
  let x_906 : f32 = x_20.x_ProjectionParams2.x;
  u_xlat27 = (x_904 * x_906);
  let x_909 : vec4<f32> = x_20.x_CameraViewXExtent[0i];
  let x_911 : vec2<f32> = u_xlat19;
  let x_915 : vec4<f32> = x_20.x_CameraViewTopLeftCorner[0i];
  let x_917 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.x, x_911.x, x_911.x)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_921 : vec4<f32> = x_20.x_CameraViewYExtent[0i];
  let x_923 : f32 = u_xlat26;
  let x_926 : vec4<f32> = u_xlat4;
  let x_928 : vec3<f32> = ((vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923, x_923, x_923)) + vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat4;
  let x_933 : f32 = u_xlat27;
  let x_936 : vec3<f32> = u_xlat1;
  let x_938 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(x_933, x_933, x_933)) + -(x_936));
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat4;
  let x_943 : vec3<f32> = u_xlat2;
  u_xlat26 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), x_943);
  let x_946 : f32 = u_xlat16.x;
  let x_949 : f32 = u_xlat26;
  u_xlat26 = ((-(x_946) * 0.00400000018998980522f) + x_949);
  let x_951 : f32 = u_xlat26;
  u_xlat26 = max(x_951, 0.0f);
  let x_953 : vec4<f32> = u_xlat4;
  let x_955 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_960 : f32 = u_xlat19.x;
  u_xlat19.x = (x_960 + 0.00009999999747378752f);
  let x_964 : f32 = u_xlat19.x;
  u_xlat19.x = (1.0f / x_964);
  let x_967 : f32 = u_xlat26;
  let x_969 : f32 = u_xlat19.x;
  u_xlat26 = (x_967 * x_969);
  let x_971 : f32 = u_xlat26;
  let x_972 : f32 = u_xlat25;
  let x_974 : f32 = u_xlat24;
  u_xlat24 = ((x_971 * x_972) + x_974);
  let x_976 : vec3<f32> = u_xlat3;
  let x_979 : vec4<f32> = x_20.x_SSAOParams;
  let x_985 : vec2<f32> = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.z)) + vec2<f32>(6.24899959564208984375f, 14.6009998321533203125f));
  let x_986 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_985.x, x_985.y, x_986.z);
  let x_988 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec2<f32>(x_988.x, x_988.y), vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_991 : f32 = u_xlat25;
  u_xlat25 = fract(x_991);
  let x_993 : f32 = u_xlat25;
  u_xlat25 = (x_993 * 52.98291778564453125f);
  let x_995 : f32 = u_xlat25;
  u_xlat25 = fract(x_995);
  let x_997 : f32 = u_xlat25;
  let x_1002 : vec2<f32> = (vec2<f32>(x_997, x_997) + vec2<f32>(0.56640625f, 0.015625f));
  let x_1003 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_1002.x, x_1002.y, x_1003.z);
  let x_1006 : f32 = u_xlat3.x;
  u_xlat25 = fract(x_1006);
  let x_1008 : f32 = u_xlat25;
  u_xlat4.z = ((x_1008 * 2.0f) + -1.0f);
  let x_1013 : f32 = u_xlat3.y;
  u_xlat25 = (x_1013 * 6.28318548202514648438f);
  let x_1016 : f32 = u_xlat4.z;
  let x_1019 : f32 = u_xlat4.z;
  u_xlat26 = ((-(x_1016) * x_1019) + 1.0f);
  let x_1022 : f32 = u_xlat26;
  u_xlat26 = sqrt(x_1022);
  let x_1024 : f32 = u_xlat25;
  u_xlat3.x = sin(x_1024);
  let x_1027 : f32 = u_xlat25;
  u_xlat6.x = cos(x_1027);
  let x_1030 : f32 = u_xlat26;
  let x_1032 : f32 = u_xlat6.x;
  u_xlat4.x = (x_1030 * x_1032);
  let x_1035 : f32 = u_xlat26;
  let x_1037 : f32 = u_xlat3.x;
  u_xlat4.y = (x_1035 * x_1037);
  let x_1040 : vec3<f32> = u_xlat2;
  let x_1042 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(-(x_1040), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : f32 = u_xlat25;
  u_xlatb25 = (x_1045 >= 0.0f);
  let x_1047 : bool = u_xlatb25;
  if (x_1047) {
    let x_1051 : vec4<f32> = u_xlat4;
    x_1048 = -(vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  } else {
    let x_1055 : vec4<f32> = u_xlat4;
    x_1048 = vec3<f32>(x_1055.x, x_1055.y, x_1055.z);
  }
  let x_1057 : vec3<f32> = x_1048;
  u_xlat3 = x_1057;
  let x_1058 : vec3<f32> = u_xlat3;
  let x_1060 : vec4<f32> = x_20.x_SSAOParams;
  let x_1063 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1058 * vec3<f32>(x_1060.y, x_1060.y, x_1060.y)) + x_1063);
  let x_1065 : vec3<f32> = u_xlat3;
  let x_1068 : vec4<f32> = x_20.x_CameraViewProjections[0i][1i];
  let x_1070 : vec2<f32> = (vec2<f32>(x_1065.y, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y));
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
  let x_1074 : vec4<f32> = x_20.x_CameraViewProjections[0i][0i];
  let x_1076 : vec3<f32> = u_xlat3;
  let x_1079 : vec4<f32> = u_xlat4;
  let x_1081 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1076.x, x_1076.x)) + vec2<f32>(x_1079.x, x_1079.y));
  let x_1082 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
  let x_1085 : vec4<f32> = x_20.x_CameraViewProjections[0i][2i];
  let x_1087 : vec3<f32> = u_xlat3;
  let x_1090 : vec4<f32> = u_xlat4;
  let x_1092 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1087.z, x_1087.z)) + vec2<f32>(x_1090.x, x_1090.y));
  let x_1093 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
  let x_1095 : vec3<f32> = u_xlat5;
  let x_1096 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_1095, x_1096);
  let x_1098 : f32 = u_xlat25;
  u_xlat26 = (1.0f / -(x_1098));
  let x_1101 : vec4<f32> = u_xlat4;
  let x_1103 : f32 = u_xlat26;
  let x_1106 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1103, x_1103)) + vec2<f32>(1.0f, 1.0f));
  let x_1107 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_1106.x, x_1106.y, x_1107.z);
  let x_1109 : vec3<f32> = u_xlat3;
  let x_1111 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(0.5f, 0.5f));
  let x_1112 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_1111.x, x_1111.y, x_1112.z);
  let x_1114 : vec3<f32> = u_xlat3;
  let x_1118 : vec2<f32> = clamp(vec2<f32>(x_1114.x, x_1114.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1119 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_1118.x, x_1118.y, x_1119.z);
  let x_1121 : vec2<f32> = u_xlat0;
  let x_1122 : vec3<f32> = u_xlat3;
  u_xlat0 = min(x_1121, vec2<f32>(x_1122.x, x_1122.y));
  let x_1125 : vec2<f32> = u_xlat0;
  let x_1127 : vec4<f32> = x_20.x_RTHandleScale;
  u_xlat0 = (x_1125 * vec2<f32>(x_1127.x, x_1127.y));
  let x_1133 : vec2<f32> = u_xlat0;
  let x_1135 : f32 = x_20.x_GlobalMipBias.x;
  let x_1136 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_1133, x_1135);
  u_xlat0.x = x_1136.x;
  let x_1141 : f32 = x_20.x_ZBufferParams.z;
  let x_1143 : f32 = u_xlat0.x;
  let x_1146 : f32 = x_20.x_ZBufferParams.w;
  u_xlat8 = ((x_1141 * x_1143) + x_1146);
  let x_1148 : f32 = u_xlat8;
  u_xlat8 = (1.0f / x_1148);
  let x_1150 : f32 = u_xlat8;
  let x_1152 : f32 = u_xlat25;
  u_xlat25 = (-(x_1150) + -(x_1152));
  let x_1155 : f32 = u_xlat25;
  let x_1158 : f32 = x_20.x_SSAOParams.y;
  u_xlatb25 = (abs(x_1155) < x_1158);
  let x_1160 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_1160);
  let x_1164 : f32 = u_xlat0.x;
  u_xlatb0 = (0.00000999999974737875f < x_1164);
  let x_1166 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_1166);
  let x_1170 : f32 = u_xlat0.x;
  let x_1171 : f32 = u_xlat25;
  u_xlat0.x = (x_1170 * x_1171);
  let x_1175 : f32 = u_xlat3.y;
  u_xlat25 = (-(x_1175) + 1.0f);
  let x_1178 : f32 = u_xlat8;
  let x_1180 : f32 = x_20.x_ProjectionParams2.x;
  u_xlat8 = (x_1178 * x_1180);
  let x_1183 : vec4<f32> = x_20.x_CameraViewXExtent[0i];
  let x_1185 : vec3<f32> = u_xlat3;
  let x_1189 : vec4<f32> = x_20.x_CameraViewTopLeftCorner[0i];
  u_xlat3 = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1193 : vec4<f32> = x_20.x_CameraViewYExtent[0i];
  let x_1195 : f32 = u_xlat25;
  let x_1198 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1195, x_1195, x_1195)) + x_1198);
  let x_1200 : vec3<f32> = u_xlat3;
  let x_1201 : f32 = u_xlat8;
  let x_1204 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1200 * vec3<f32>(x_1201, x_1201, x_1201)) + -(x_1204));
  let x_1207 : vec3<f32> = u_xlat1;
  let x_1208 : vec3<f32> = u_xlat2;
  u_xlat8 = dot(x_1207, x_1208);
  let x_1211 : f32 = u_xlat16.x;
  let x_1214 : f32 = u_xlat8;
  u_xlat8 = ((-(x_1211) * 0.00400000018998980522f) + x_1214);
  let x_1216 : f32 = u_xlat8;
  u_xlat8 = max(x_1216, 0.0f);
  let x_1218 : vec3<f32> = u_xlat1;
  let x_1219 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(x_1218, x_1219);
  let x_1223 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1223 + 0.00009999999747378752f);
  let x_1227 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_1227);
  let x_1230 : f32 = u_xlat8;
  let x_1232 : f32 = u_xlat1.x;
  u_xlat8 = (x_1230 * x_1232);
  let x_1234 : f32 = u_xlat8;
  let x_1236 : f32 = u_xlat0.x;
  let x_1238 : f32 = u_xlat24;
  u_xlat0.x = ((x_1234 * x_1236) + x_1238);
  let x_1242 : f32 = u_xlat0.x;
  let x_1244 : f32 = x_20.x_SSAOParams.y;
  u_xlat0.x = (x_1242 * x_1244);
  let x_1248 : f32 = x_20.x_SSAOParams.w;
  u_xlat8 = (1.0f / x_1248);
  let x_1251 : f32 = u_xlat16.x;
  let x_1253 : f32 = u_xlat8;
  u_xlat8 = ((-(x_1251) * x_1253) + 1.0f);
  let x_1256 : f32 = u_xlat8;
  let x_1257 : f32 = u_xlat8;
  u_xlat8 = (x_1256 * x_1257);
  let x_1260 : f32 = u_xlat0.x;
  let x_1262 : f32 = x_20.x_SSAOParams.x;
  u_xlat0.x = (x_1260 * x_1262);
  let x_1265 : f32 = u_xlat8;
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1265 * x_1267);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1271 * 0.25f);
  let x_1276 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1276, 0.0f, 1.0f);
  let x_1280 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1280);
  let x_1284 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1284 * 0.60000002384185791016f);
  let x_1289 : f32 = u_xlat0.x;
  SV_Target0.x = exp2(x_1289);
  let x_1293 : vec3<f32> = u_xlat2;
  let x_1295 : vec3<f32> = ((x_1293 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_1296 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1296.x, x_1295.x, x_1295.y, x_1295.z);
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


