type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 8u>;

type Arr_2 = array<vec4<f32>, 8u>;

type Arr_3 = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_LightColor : Arr_3,
  unity_LightPosition : Arr_3,
  unity_LightAtten : Arr_3,
  unity_SpotDirection : Arr_3,
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

@group(0) @binding(2) var<uniform> x_21 : VGlobals;

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
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = x_21.unity_MatrixV[1i];
  let x_34 : vec3<f32> = (vec3<f32>(x_27.y, x_27.y, x_27.y) * vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_38 : vec4<f32> = x_21.unity_MatrixV[0i];
  let x_41 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_46 : vec3<f32> = ((vec3<f32>(x_38.x, x_38.y, x_38.z) * vec3<f32>(x_41.x, x_41.x, x_41.x)) + vec3<f32>(x_44.x, x_44.y, x_44.z));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_51 : vec4<f32> = x_21.unity_MatrixV[2i];
  let x_54 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_54.z, x_54.z, x_54.z)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_64 : vec4<f32> = x_21.unity_MatrixV[3i];
  let x_67 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_67.w, x_67.w, x_67.w)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_80 : vec4<f32> = x_21.unity_MatrixV[1i];
  let x_82 : vec3<f32> = (vec3<f32>(x_77.y, x_77.y, x_77.y) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = x_21.unity_MatrixV[0i];
  let x_89 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_89.x, x_89.x, x_89.x)) + vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = x_21.unity_MatrixV[2i];
  let x_101 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec3<f32> = ((vec3<f32>(x_98.x, x_98.y, x_98.z) * vec3<f32>(x_101.z, x_101.z, x_101.z)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = x_21.unity_MatrixV[3i];
  let x_113 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_113.w, x_113.w, x_113.w)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_124 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_127 : vec4<f32> = x_21.unity_MatrixV[1i];
  u_xlat2 = (vec3<f32>(x_124.y, x_124.y, x_124.y) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_131 : vec4<f32> = x_21.unity_MatrixV[0i];
  let x_134 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_137 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + x_137);
  let x_140 : vec4<f32> = x_21.unity_MatrixV[2i];
  let x_143 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_146 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_143.z, x_143.z, x_143.z)) + x_146);
  let x_149 : vec4<f32> = x_21.unity_MatrixV[3i];
  let x_152 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_155 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_152.w, x_152.w, x_152.w)) + x_155);
  let x_159 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_162 : vec4<f32> = x_21.unity_MatrixV[1i];
  u_xlat3 = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : vec4<f32> = x_21.unity_MatrixV[0i];
  let x_169 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_172 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_169.x, x_169.x, x_169.x)) + x_172);
  let x_175 : vec4<f32> = x_21.unity_MatrixV[2i];
  let x_178 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_178.z, x_178.z, x_178.z)) + x_181);
  let x_184 : vec4<f32> = x_21.unity_MatrixV[3i];
  let x_187 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_187.w, x_187.w, x_187.w)) + x_190);
  let x_195 : vec4<f32> = x_21.unity_WorldToObject[1i];
  let x_199 : vec4<f32> = x_21.unity_MatrixInvV[0i];
  u_xlat4 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_199.y, x_199.y, x_199.y));
  let x_203 : vec4<f32> = x_21.unity_WorldToObject[0i];
  let x_206 : vec4<f32> = x_21.unity_MatrixInvV[0i];
  let x_209 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + x_209);
  let x_212 : vec4<f32> = x_21.unity_WorldToObject[2i];
  let x_215 : vec4<f32> = x_21.unity_MatrixInvV[0i];
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + x_218);
  let x_221 : vec4<f32> = x_21.unity_WorldToObject[3i];
  let x_224 : vec4<f32> = x_21.unity_MatrixInvV[0i];
  let x_227 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_224.w, x_224.w, x_224.w)) + x_227);
  let x_231 : vec4<f32> = x_21.unity_WorldToObject[1i];
  let x_234 : vec4<f32> = x_21.unity_MatrixInvV[1i];
  u_xlat5 = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_234.y, x_234.y, x_234.y));
  let x_238 : vec4<f32> = x_21.unity_WorldToObject[0i];
  let x_241 : vec4<f32> = x_21.unity_MatrixInvV[1i];
  let x_244 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + x_244);
  let x_247 : vec4<f32> = x_21.unity_WorldToObject[2i];
  let x_250 : vec4<f32> = x_21.unity_MatrixInvV[1i];
  let x_253 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
  let x_256 : vec4<f32> = x_21.unity_WorldToObject[3i];
  let x_259 : vec4<f32> = x_21.unity_MatrixInvV[1i];
  let x_262 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_259.w, x_259.w, x_259.w)) + x_262);
  let x_266 : vec4<f32> = x_21.unity_WorldToObject[1i];
  let x_269 : vec4<f32> = x_21.unity_MatrixInvV[2i];
  u_xlat6 = (vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_269.y, x_269.y, x_269.y));
  let x_273 : vec4<f32> = x_21.unity_WorldToObject[0i];
  let x_276 : vec4<f32> = x_21.unity_MatrixInvV[2i];
  let x_279 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_276.x, x_276.x, x_276.x)) + x_279);
  let x_282 : vec4<f32> = x_21.unity_WorldToObject[2i];
  let x_285 : vec4<f32> = x_21.unity_MatrixInvV[2i];
  let x_288 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_285.z, x_285.z, x_285.z)) + x_288);
  let x_291 : vec4<f32> = x_21.unity_WorldToObject[3i];
  let x_294 : vec4<f32> = x_21.unity_MatrixInvV[2i];
  let x_297 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_294.w, x_294.w, x_294.w)) + x_297);
  let x_299 : vec4<f32> = u_xlat1;
  let x_303 : vec3<f32> = in_POSITION0;
  let x_305 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_303.y, x_303.y, x_303.y));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = in_POSITION0;
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.x, x_310.x)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat2;
  let x_319 : vec3<f32> = in_POSITION0;
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec3<f32> = ((x_318 * vec3<f32>(x_319.z, x_319.z, x_319.z)) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec3<f32> = u_xlat3;
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = (x_327 + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec3<f32> = u_xlat4;
  let x_335 : vec3<f32> = in_NORMAL0;
  u_xlat1.x = dot(x_333, x_335);
  let x_340 : vec3<f32> = u_xlat5;
  let x_341 : vec3<f32> = in_NORMAL0;
  u_xlat1.y = dot(x_340, x_341);
  let x_345 : vec3<f32> = u_xlat6;
  let x_346 : vec3<f32> = in_NORMAL0;
  u_xlat1.z = dot(x_345, x_346);
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_356);
  let x_358 : f32 = u_xlat21;
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec3<f32> = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_370);
  let x_374 : vec4<f32> = x_21.x_Color;
  let x_378 : vec4<f32> = x_21.glstate_lightmodel_ambient;
  let x_383 : vec4<f32> = x_21.x_Emission;
  u_xlat2 = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_390 : f32 = x_21.x_Shininess;
  u_xlat22 = (x_390 * 128.0f);
  let x_393 : vec3<f32> = u_xlat2;
  u_xlat3 = x_393;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_405 : i32 = u_xlati_loop_1;
    let x_409 : i32 = x_21.unity_VertexLightParams.x;
    if ((x_405 < x_409)) {
    } else {
      break;
    }
    let x_412 : vec4<f32> = u_xlat0;
    let x_415 : i32 = u_xlati_loop_1;
    let x_417 : vec4<f32> = x_21.unity_LightPosition[x_415];
    let x_420 : i32 = u_xlati_loop_1;
    let x_422 : vec4<f32> = x_21.unity_LightPosition[x_420];
    u_xlat5 = ((-(vec3<f32>(x_412.x, x_412.y, x_412.z)) * vec3<f32>(x_417.w, x_417.w, x_417.w)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_426 : vec3<f32> = u_xlat5;
    let x_427 : vec3<f32> = u_xlat5;
    u_xlat24 = dot(x_426, x_427);
    let x_430 : i32 = u_xlati_loop_1;
    let x_432 : f32 = x_21.unity_LightAtten[x_430].z;
    let x_433 : f32 = u_xlat24;
    u_xlat25 = ((x_432 * x_433) + 1.0f);
    let x_437 : f32 = u_xlat25;
    u_xlat25 = (1.0f / x_437);
    let x_441 : i32 = u_xlati_loop_1;
    let x_444 : f32 = x_21.unity_LightPosition[x_441].w;
    u_xlatb26 = !((0.0f == x_444));
    let x_447 : i32 = u_xlati_loop_1;
    let x_449 : f32 = x_21.unity_LightAtten[x_447].w;
    let x_450 : f32 = u_xlat24;
    u_xlatb6 = (x_449 < x_450);
    let x_452 : bool = u_xlatb26;
    let x_453 : bool = u_xlatb6;
    u_xlatb26 = (x_452 & x_453);
    let x_455 : bool = u_xlatb26;
    let x_456 : f32 = u_xlat25;
    u_xlat25 = select(x_456, 0.0f, x_455);
    let x_458 : f32 = u_xlat24;
    u_xlat24 = max(x_458, 0.000001f);
    let x_461 : f32 = u_xlat24;
    u_xlat24 = inverseSqrt(x_461);
    let x_463 : f32 = u_xlat24;
    let x_465 : vec3<f32> = u_xlat5;
    u_xlat5 = (vec3<f32>(x_463, x_463, x_463) * x_465);
    let x_467 : vec3<f32> = u_xlat5;
    let x_468 : i32 = u_xlati_loop_1;
    let x_470 : vec4<f32> = x_21.unity_SpotDirection[x_468];
    u_xlat24 = dot(x_467, vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : f32 = u_xlat24;
    u_xlat24 = max(x_473, 0.0f);
    let x_475 : f32 = u_xlat24;
    let x_476 : i32 = u_xlati_loop_1;
    let x_478 : f32 = x_21.unity_LightAtten[x_476].x;
    u_xlat24 = (x_475 + -(x_478));
    let x_481 : f32 = u_xlat24;
    let x_482 : i32 = u_xlati_loop_1;
    let x_484 : f32 = x_21.unity_LightAtten[x_482].y;
    u_xlat24 = (x_481 * x_484);
    let x_486 : f32 = u_xlat24;
    u_xlat24 = clamp(x_486, 0.0f, 1.0f);
    let x_488 : f32 = u_xlat24;
    let x_489 : f32 = u_xlat25;
    u_xlat24 = (x_488 * x_489);
    let x_491 : f32 = u_xlat24;
    u_xlat24 = (x_491 * 0.5f);
    let x_494 : vec4<f32> = u_xlat1;
    let x_496 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(vec3<f32>(x_494.x, x_494.y, x_494.z), x_496);
    let x_498 : f32 = u_xlat25;
    u_xlat25 = max(x_498, 0.0f);
    let x_500 : f32 = u_xlat25;
    let x_503 : vec4<f32> = x_21.x_Color;
    u_xlat6 = (vec3<f32>(x_500, x_500, x_500) * vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_506 : vec3<f32> = u_xlat6;
    let x_507 : i32 = u_xlati_loop_1;
    let x_509 : vec4<f32> = x_21.unity_LightColor[x_507];
    u_xlat6 = (x_506 * vec3<f32>(x_509.x, x_509.y, x_509.z));
    let x_513 : f32 = u_xlat25;
    u_xlatb25 = (0.0f < x_513);
    let x_515 : bool = u_xlatb25;
    if (x_515) {
      let x_518 : vec4<f32> = u_xlat0;
      let x_521 : f32 = u_xlat21;
      let x_524 : vec3<f32> = u_xlat5;
      u_xlat5 = ((-(vec3<f32>(x_518.x, x_518.y, x_518.z)) * vec3<f32>(x_521, x_521, x_521)) + x_524);
      let x_526 : vec3<f32> = u_xlat5;
      let x_527 : vec3<f32> = u_xlat5;
      u_xlat25 = dot(x_526, x_527);
      let x_529 : f32 = u_xlat25;
      u_xlat25 = inverseSqrt(x_529);
      let x_531 : f32 = u_xlat25;
      let x_533 : vec3<f32> = u_xlat5;
      u_xlat5 = (vec3<f32>(x_531, x_531, x_531) * x_533);
      let x_535 : vec4<f32> = u_xlat1;
      let x_537 : vec3<f32> = u_xlat5;
      u_xlat25 = dot(vec3<f32>(x_535.x, x_535.y, x_535.z), x_537);
      let x_539 : f32 = u_xlat25;
      u_xlat25 = max(x_539, 0.0f);
      let x_541 : f32 = u_xlat25;
      u_xlat25 = log2(x_541);
      let x_543 : f32 = u_xlat22;
      let x_544 : f32 = u_xlat25;
      u_xlat25 = (x_543 * x_544);
      let x_546 : f32 = u_xlat25;
      u_xlat25 = exp2(x_546);
      let x_548 : f32 = u_xlat25;
      u_xlat25 = min(x_548, 1.0f);
      let x_550 : f32 = u_xlat24;
      let x_551 : f32 = u_xlat25;
      u_xlat25 = (x_550 * x_551);
      let x_553 : f32 = u_xlat25;
      let x_555 : i32 = u_xlati_loop_1;
      let x_557 : vec4<f32> = x_21.unity_LightColor[x_555];
      let x_560 : vec3<f32> = u_xlat4;
      u_xlat4 = ((vec3<f32>(x_553, x_553, x_553) * vec3<f32>(x_557.x, x_557.y, x_557.z)) + x_560);
    }
    let x_562 : f32 = u_xlat24;
    let x_564 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_562, x_562, x_562) * x_564);
    let x_566 : vec3<f32> = u_xlat5;
    u_xlat5 = min(x_566, vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_569 : vec3<f32> = u_xlat3;
    let x_570 : vec3<f32> = u_xlat5;
    u_xlat3 = (x_569 + x_570);

    continuing {
      let x_572 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_572 + 1i);
    }
  }
  let x_576 : vec3<f32> = u_xlat4;
  let x_579 : vec4<f32> = x_21.x_SpecColor;
  vs_COLOR1 = (x_576 * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec3<f32> = vs_COLOR1;
  vs_COLOR1 = clamp(x_582, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_588 : vec3<f32> = u_xlat3;
  let x_589 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = vs_COLOR0;
  let x_595 : vec3<f32> = clamp(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_596 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_599 : f32 = x_21.x_Color.w;
  vs_COLOR0.w = x_599;
  let x_603 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_603, 0.0f, 1.0f);
  let x_610 : vec3<f32> = in_TEXCOORD0;
  let x_614 : vec4<f32> = x_21.x_MainTex_ST;
  let x_618 : vec4<f32> = x_21.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_610.x, x_610.y) * vec2<f32>(x_614.x, x_614.y)) + vec2<f32>(x_618.z, x_618.w));
  let x_621 : vec3<f32> = in_POSITION0;
  let x_624 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_621.y, x_621.y, x_621.y, x_621.y) * x_624);
  let x_627 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_628 : vec3<f32> = in_POSITION0;
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_627 * vec4<f32>(x_628.x, x_628.x, x_628.x, x_628.x)) + x_631);
  let x_634 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_635 : vec3<f32> = in_POSITION0;
  let x_638 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_634 * vec4<f32>(x_635.z, x_635.z, x_635.z, x_635.z)) + x_638);
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_640 + x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_644.y, x_644.y, x_644.y, x_644.y) * x_648);
  let x_651 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_652 : vec4<f32> = u_xlat0;
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_651 * vec4<f32>(x_652.x, x_652.x, x_652.x, x_652.x)) + x_655);
  let x_658 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_658 * vec4<f32>(x_659.z, x_659.z, x_659.z, x_659.z)) + x_662);
  let x_669 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_670 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = u_xlat1;
  gl_Position = ((x_669 * vec4<f32>(x_670.w, x_670.w, x_670.w, x_670.w)) + x_673);
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

