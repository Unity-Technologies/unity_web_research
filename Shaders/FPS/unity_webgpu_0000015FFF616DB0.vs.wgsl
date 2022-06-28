type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 8u>;

type Arr_2 = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_LightColor : Arr_2,
  unity_LightPosition : Arr_2,
  unity_LightAtten : Arr_2,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  glstate_lightmodel_ambient : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixInvV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Color : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_Emission : vec4<f32>,
  x_Shininess : f32,
  @size(12)
  padding : u32,
  unity_VertexLightParams : vec4<i32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb25 : bool;

var<private> vs_COLOR1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec3<f32>;

var<private> u_xlati23 : i32;

var<private> u_xlatb24 : bool;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = x_20.unity_MatrixV[1i];
  let x_33 : vec3<f32> = (vec3<f32>(x_26.y, x_26.y, x_26.y) * vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_33.z, x_34.w);
  let x_37 : vec4<f32> = x_20.unity_MatrixV[0i];
  let x_40 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec3<f32> = ((vec3<f32>(x_37.x, x_37.y, x_37.z) * vec3<f32>(x_40.x, x_40.x, x_40.x)) + vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_46 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_50 : vec4<f32> = x_20.unity_MatrixV[2i];
  let x_53 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec3<f32> = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_53.z, x_53.z, x_53.z)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_62 : vec4<f32> = x_20.unity_MatrixV[3i];
  let x_65 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_65.w, x_65.w, x_65.w)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_75 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_78 : vec4<f32> = x_20.unity_MatrixV[1i];
  let x_80 : vec3<f32> = (vec3<f32>(x_75.y, x_75.y, x_75.y) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = x_20.unity_MatrixV[0i];
  let x_87 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_87.x, x_87.x, x_87.x)) + vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec4<f32> = x_20.unity_MatrixV[2i];
  let x_99 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_99.z, x_99.z, x_99.z)) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : vec4<f32> = x_20.unity_MatrixV[3i];
  let x_111 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_114 : vec4<f32> = u_xlat1;
  let x_116 : vec3<f32> = ((vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_111.w, x_111.w, x_111.w)) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_122 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_125 : vec4<f32> = x_20.unity_MatrixV[1i];
  u_xlat2 = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_129 : vec4<f32> = x_20.unity_MatrixV[0i];
  let x_132 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = x_20.unity_MatrixV[2i];
  let x_141 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_141.z, x_141.z, x_141.z)) + x_144);
  let x_147 : vec4<f32> = x_20.unity_MatrixV[3i];
  let x_150 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_153 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_150.w, x_150.w, x_150.w)) + x_153);
  let x_157 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_160 : vec4<f32> = x_20.unity_MatrixV[1i];
  u_xlat3 = (vec3<f32>(x_157.y, x_157.y, x_157.y) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_164 : vec4<f32> = x_20.unity_MatrixV[0i];
  let x_167 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_170 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_20.unity_MatrixV[2i];
  let x_176 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_179 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + x_179);
  let x_182 : vec4<f32> = x_20.unity_MatrixV[3i];
  let x_185 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_185.w, x_185.w, x_185.w)) + x_188);
  let x_193 : vec4<f32> = x_20.unity_WorldToObject[1i];
  let x_197 : vec4<f32> = x_20.unity_MatrixInvV[0i];
  u_xlat4 = (vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_201 : vec4<f32> = x_20.unity_WorldToObject[0i];
  let x_204 : vec4<f32> = x_20.unity_MatrixInvV[0i];
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_20.unity_WorldToObject[2i];
  let x_213 : vec4<f32> = x_20.unity_MatrixInvV[0i];
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_219 : vec4<f32> = x_20.unity_WorldToObject[3i];
  let x_222 : vec4<f32> = x_20.unity_MatrixInvV[0i];
  let x_225 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_222.w, x_222.w, x_222.w)) + x_225);
  let x_229 : vec4<f32> = x_20.unity_WorldToObject[1i];
  let x_232 : vec4<f32> = x_20.unity_MatrixInvV[1i];
  u_xlat5 = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_232.y, x_232.y, x_232.y));
  let x_236 : vec4<f32> = x_20.unity_WorldToObject[0i];
  let x_239 : vec4<f32> = x_20.unity_MatrixInvV[1i];
  let x_242 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + x_242);
  let x_245 : vec4<f32> = x_20.unity_WorldToObject[2i];
  let x_248 : vec4<f32> = x_20.unity_MatrixInvV[1i];
  let x_251 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_248.z, x_248.z, x_248.z)) + x_251);
  let x_254 : vec4<f32> = x_20.unity_WorldToObject[3i];
  let x_257 : vec4<f32> = x_20.unity_MatrixInvV[1i];
  let x_260 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_257.w, x_257.w, x_257.w)) + x_260);
  let x_264 : vec4<f32> = x_20.unity_WorldToObject[1i];
  let x_267 : vec4<f32> = x_20.unity_MatrixInvV[2i];
  u_xlat6 = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_267.y, x_267.y, x_267.y));
  let x_271 : vec4<f32> = x_20.unity_WorldToObject[0i];
  let x_274 : vec4<f32> = x_20.unity_MatrixInvV[2i];
  let x_277 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_274.x, x_274.x, x_274.x)) + x_277);
  let x_280 : vec4<f32> = x_20.unity_WorldToObject[2i];
  let x_283 : vec4<f32> = x_20.unity_MatrixInvV[2i];
  let x_286 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_283.z, x_283.z, x_283.z)) + x_286);
  let x_289 : vec4<f32> = x_20.unity_WorldToObject[3i];
  let x_292 : vec4<f32> = x_20.unity_MatrixInvV[2i];
  let x_295 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_292.w, x_292.w, x_292.w)) + x_295);
  let x_297 : vec4<f32> = u_xlat1;
  let x_301 : vec3<f32> = in_POSITION0;
  let x_303 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_301.y, x_301.y, x_301.y));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat0;
  let x_308 : vec3<f32> = in_POSITION0;
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec3<f32> = u_xlat2;
  let x_317 : vec3<f32> = in_POSITION0;
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((x_316 * vec3<f32>(x_317.z, x_317.z, x_317.z)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec3<f32> = u_xlat3;
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = (x_325 + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec3<f32> = u_xlat4;
  let x_333 : vec3<f32> = in_NORMAL0;
  u_xlat1.x = dot(x_331, x_333);
  let x_338 : vec3<f32> = u_xlat5;
  let x_339 : vec3<f32> = in_NORMAL0;
  u_xlat1.y = dot(x_338, x_339);
  let x_343 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = in_NORMAL0;
  u_xlat1.z = dot(x_343, x_344);
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_354);
  let x_356 : f32 = u_xlat21;
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec3<f32> = (vec3<f32>(x_356, x_356, x_356) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_363.x, x_363.y, x_363.z), vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_368);
  let x_372 : vec4<f32> = x_20.x_Color;
  let x_376 : vec4<f32> = x_20.glstate_lightmodel_ambient;
  let x_381 : vec4<f32> = x_20.x_Emission;
  u_xlat2 = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_376.x, x_376.y, x_376.z)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_388 : f32 = x_20.x_Shininess;
  u_xlat22 = (x_388 * 128.0f);
  let x_391 : vec3<f32> = u_xlat2;
  u_xlat3 = x_391;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_403 : i32 = u_xlati_loop_1;
    let x_407 : i32 = x_20.unity_VertexLightParams.x;
    if ((x_403 < x_407)) {
    } else {
      break;
    }
    let x_410 : vec4<f32> = u_xlat0;
    let x_413 : i32 = u_xlati_loop_1;
    let x_415 : vec4<f32> = x_20.unity_LightPosition[x_413];
    let x_418 : i32 = u_xlati_loop_1;
    let x_420 : vec4<f32> = x_20.unity_LightPosition[x_418];
    u_xlat5 = ((-(vec3<f32>(x_410.x, x_410.y, x_410.z)) * vec3<f32>(x_415.w, x_415.w, x_415.w)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_424 : vec3<f32> = u_xlat5;
    let x_425 : vec3<f32> = u_xlat5;
    u_xlat24 = dot(x_424, x_425);
    let x_428 : i32 = u_xlati_loop_1;
    let x_430 : f32 = x_20.unity_LightAtten[x_428].z;
    let x_431 : f32 = u_xlat24;
    u_xlat25 = ((x_430 * x_431) + 1.0f);
    let x_435 : f32 = u_xlat25;
    u_xlat25 = (1.0f / x_435);
    let x_439 : i32 = u_xlati_loop_1;
    let x_442 : f32 = x_20.unity_LightPosition[x_439].w;
    u_xlatb26 = !((0.0f == x_442));
    let x_445 : i32 = u_xlati_loop_1;
    let x_447 : f32 = x_20.unity_LightAtten[x_445].w;
    let x_448 : f32 = u_xlat24;
    u_xlatb6 = (x_447 < x_448);
    let x_450 : bool = u_xlatb26;
    let x_451 : bool = u_xlatb6;
    u_xlatb26 = (x_450 & x_451);
    let x_453 : f32 = u_xlat24;
    u_xlat24 = max(x_453, 0.000001f);
    let x_456 : f32 = u_xlat24;
    u_xlat24 = inverseSqrt(x_456);
    let x_458 : f32 = u_xlat24;
    let x_460 : vec3<f32> = u_xlat5;
    u_xlat5 = (vec3<f32>(x_458, x_458, x_458) * x_460);
    let x_462 : f32 = u_xlat25;
    u_xlat24 = (x_462 * 0.5f);
    let x_465 : bool = u_xlatb26;
    let x_466 : f32 = u_xlat24;
    u_xlat24 = select(x_466, 0.0f, x_465);
    let x_468 : vec4<f32> = u_xlat1;
    let x_470 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), x_470);
    let x_472 : f32 = u_xlat25;
    u_xlat25 = max(x_472, 0.0f);
    let x_474 : f32 = u_xlat25;
    let x_477 : vec4<f32> = x_20.x_Color;
    u_xlat6 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_477.x, x_477.y, x_477.z));
    let x_480 : vec3<f32> = u_xlat6;
    let x_481 : i32 = u_xlati_loop_1;
    let x_483 : vec4<f32> = x_20.unity_LightColor[x_481];
    u_xlat6 = (x_480 * vec3<f32>(x_483.x, x_483.y, x_483.z));
    let x_487 : f32 = u_xlat25;
    u_xlatb25 = (0.0f < x_487);
    let x_489 : bool = u_xlatb25;
    if (x_489) {
      let x_492 : vec4<f32> = u_xlat0;
      let x_495 : f32 = u_xlat21;
      let x_498 : vec3<f32> = u_xlat5;
      u_xlat5 = ((-(vec3<f32>(x_492.x, x_492.y, x_492.z)) * vec3<f32>(x_495, x_495, x_495)) + x_498);
      let x_500 : vec3<f32> = u_xlat5;
      let x_501 : vec3<f32> = u_xlat5;
      u_xlat25 = dot(x_500, x_501);
      let x_503 : f32 = u_xlat25;
      u_xlat25 = inverseSqrt(x_503);
      let x_505 : f32 = u_xlat25;
      let x_507 : vec3<f32> = u_xlat5;
      u_xlat5 = (vec3<f32>(x_505, x_505, x_505) * x_507);
      let x_509 : vec4<f32> = u_xlat1;
      let x_511 : vec3<f32> = u_xlat5;
      u_xlat25 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), x_511);
      let x_513 : f32 = u_xlat25;
      u_xlat25 = max(x_513, 0.0f);
      let x_515 : f32 = u_xlat25;
      u_xlat25 = log2(x_515);
      let x_517 : f32 = u_xlat22;
      let x_518 : f32 = u_xlat25;
      u_xlat25 = (x_517 * x_518);
      let x_520 : f32 = u_xlat25;
      u_xlat25 = exp2(x_520);
      let x_522 : f32 = u_xlat25;
      u_xlat25 = min(x_522, 1.0f);
      let x_524 : f32 = u_xlat24;
      let x_525 : f32 = u_xlat25;
      u_xlat25 = (x_524 * x_525);
      let x_527 : f32 = u_xlat25;
      let x_529 : i32 = u_xlati_loop_1;
      let x_531 : vec4<f32> = x_20.unity_LightColor[x_529];
      let x_534 : vec3<f32> = u_xlat4;
      u_xlat4 = ((vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_531.x, x_531.y, x_531.z)) + x_534);
    }
    let x_536 : f32 = u_xlat24;
    let x_538 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_536, x_536, x_536) * x_538);
    let x_540 : vec3<f32> = u_xlat5;
    u_xlat5 = min(x_540, vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_543 : vec3<f32> = u_xlat3;
    let x_544 : vec3<f32> = u_xlat5;
    u_xlat3 = (x_543 + x_544);

    continuing {
      let x_546 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_546 + 1i);
    }
  }
  let x_550 : vec3<f32> = u_xlat4;
  let x_553 : vec4<f32> = x_20.x_SpecColor;
  vs_COLOR1 = (x_550 * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec3<f32> = vs_COLOR1;
  vs_COLOR1 = clamp(x_556, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_562 : vec3<f32> = u_xlat3;
  let x_563 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = vs_COLOR0;
  let x_569 : vec3<f32> = clamp(vec3<f32>(x_565.x, x_565.y, x_565.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_570 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = x_20.x_Color.w;
  vs_COLOR0.w = x_573;
  let x_577 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_577, 0.0f, 1.0f);
  let x_584 : vec3<f32> = in_TEXCOORD0;
  let x_588 : vec4<f32> = x_20.x_MainTex_ST;
  let x_592 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_588.x, x_588.y)) + vec2<f32>(x_592.z, x_592.w));
  let x_595 : vec3<f32> = in_POSITION0;
  let x_598 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_595.y, x_595.y, x_595.y, x_595.y) * x_598);
  let x_601 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_602 : vec3<f32> = in_POSITION0;
  let x_605 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_601 * vec4<f32>(x_602.x, x_602.x, x_602.x, x_602.x)) + x_605);
  let x_608 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_609 : vec3<f32> = in_POSITION0;
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_608 * vec4<f32>(x_609.z, x_609.z, x_609.z, x_609.z)) + x_612);
  let x_614 : vec4<f32> = u_xlat0;
  let x_616 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat0 = (x_614 + x_616);
  let x_618 : vec4<f32> = u_xlat0;
  let x_622 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_618.y, x_618.y, x_618.y, x_618.y) * x_622);
  let x_625 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_626 : vec4<f32> = u_xlat0;
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_625 * vec4<f32>(x_626.x, x_626.x, x_626.x, x_626.x)) + x_629);
  let x_632 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_633 : vec4<f32> = u_xlat0;
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_632 * vec4<f32>(x_633.z, x_633.z, x_633.z, x_633.z)) + x_636);
  let x_643 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_644 : vec4<f32> = u_xlat0;
  let x_647 : vec4<f32> = u_xlat1;
  gl_Position = ((x_643 * vec4<f32>(x_644.w, x_644.w, x_644.w, x_644.w)) + x_647);
  return;
}

struct main_out {
  @location(1)
  vs_COLOR1_1 : vec3<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_COLOR1, vs_COLOR0, vs_TEXCOORD0, gl_Position);
}

