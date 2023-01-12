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
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_Emission : vec4<f32>,
  x_Shininess : f32,
  @size(12)
  padding : u32,
  unity_VertexLightParams : vec4<i32>,
  x_MainTex_ST : vec4<f32>,
}

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_POSITION0 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_COLOR1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlati_loop_1 : i32;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlatb6 : bool;
  var u_xlatb13 : bool;
  var u_xlatb26 : bool;
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
  let x_371 : f32 = u_xlat21;
  u_xlat22 = inverseSqrt(x_371);
  let x_375 : vec4<f32> = x_21.x_Color;
  let x_379 : vec4<f32> = x_21.glstate_lightmodel_ambient;
  let x_384 : vec4<f32> = x_21.x_Emission;
  u_xlat2 = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_379.x, x_379.y, x_379.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_391 : f32 = x_21.x_Shininess;
  u_xlat23 = (x_391 * 128.0f);
  let x_394 : vec3<f32> = u_xlat2;
  u_xlat3 = x_394;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_406 : i32 = u_xlati_loop_1;
    let x_410 : i32 = x_21.unity_VertexLightParams.x;
    if ((x_406 < x_410)) {
    } else {
      break;
    }
    let x_413 : vec4<f32> = u_xlat0;
    let x_416 : i32 = u_xlati_loop_1;
    let x_418 : vec4<f32> = x_21.unity_LightPosition[x_416];
    let x_421 : i32 = u_xlati_loop_1;
    let x_423 : vec4<f32> = x_21.unity_LightPosition[x_421];
    u_xlat5 = ((-(vec3<f32>(x_413.x, x_413.y, x_413.z)) * vec3<f32>(x_418.w, x_418.w, x_418.w)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_427 : vec3<f32> = u_xlat5;
    let x_428 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_427, x_428);
    let x_431 : i32 = u_xlati_loop_1;
    let x_433 : f32 = x_21.unity_LightAtten[x_431].z;
    let x_434 : f32 = u_xlat25;
    u_xlat26 = ((x_433 * x_434) + 1.0f);
    let x_438 : f32 = u_xlat26;
    u_xlat26 = (1.0f / x_438);
    let x_442 : i32 = u_xlati_loop_1;
    let x_445 : f32 = x_21.unity_LightPosition[x_442].w;
    u_xlatb6 = !((0.0f == x_445));
    let x_448 : i32 = u_xlati_loop_1;
    let x_450 : f32 = x_21.unity_LightAtten[x_448].w;
    let x_451 : f32 = u_xlat25;
    u_xlatb13 = (x_450 < x_451);
    let x_453 : bool = u_xlatb13;
    let x_454 : bool = u_xlatb6;
    u_xlatb6 = (x_453 & x_454);
    let x_456 : bool = u_xlatb6;
    let x_457 : f32 = u_xlat26;
    u_xlat26 = select(x_457, 0.0f, x_456);
    let x_459 : f32 = u_xlat25;
    u_xlat25 = max(x_459, 0.000001f);
    let x_462 : f32 = u_xlat25;
    u_xlat25 = inverseSqrt(x_462);
    let x_464 : f32 = u_xlat25;
    let x_466 : vec3<f32> = u_xlat5;
    u_xlat5 = (vec3<f32>(x_464, x_464, x_464) * x_466);
    let x_468 : vec3<f32> = u_xlat5;
    let x_469 : i32 = u_xlati_loop_1;
    let x_471 : vec4<f32> = x_21.unity_SpotDirection[x_469];
    u_xlat25 = dot(x_468, vec3<f32>(x_471.x, x_471.y, x_471.z));
    let x_474 : f32 = u_xlat25;
    u_xlat25 = max(x_474, 0.0f);
    let x_476 : f32 = u_xlat25;
    let x_477 : i32 = u_xlati_loop_1;
    let x_479 : f32 = x_21.unity_LightAtten[x_477].x;
    u_xlat25 = (x_476 + -(x_479));
    let x_482 : f32 = u_xlat25;
    let x_483 : i32 = u_xlati_loop_1;
    let x_485 : f32 = x_21.unity_LightAtten[x_483].y;
    u_xlat25 = (x_482 * x_485);
    let x_487 : f32 = u_xlat25;
    u_xlat25 = clamp(x_487, 0.0f, 1.0f);
    let x_489 : f32 = u_xlat25;
    let x_490 : f32 = u_xlat26;
    u_xlat25 = (x_489 * x_490);
    let x_492 : f32 = u_xlat25;
    u_xlat25 = (x_492 * 0.5f);
    let x_495 : vec4<f32> = u_xlat1;
    let x_497 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(vec3<f32>(x_495.x, x_495.y, x_495.z), x_497);
    let x_499 : f32 = u_xlat26;
    u_xlat26 = max(x_499, 0.0f);
    let x_501 : f32 = u_xlat26;
    let x_504 : vec4<f32> = x_21.x_Color;
    u_xlat6 = (vec3<f32>(x_501, x_501, x_501) * vec3<f32>(x_504.x, x_504.y, x_504.z));
    let x_507 : vec3<f32> = u_xlat6;
    let x_508 : i32 = u_xlati_loop_1;
    let x_510 : vec4<f32> = x_21.unity_LightColor[x_508];
    u_xlat6 = (x_507 * vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_514 : f32 = u_xlat26;
    u_xlatb26 = (0.0f < x_514);
    let x_516 : bool = u_xlatb26;
    if (x_516) {
      let x_519 : vec4<f32> = u_xlat0;
      let x_522 : f32 = u_xlat22;
      let x_525 : vec3<f32> = u_xlat5;
      u_xlat5 = ((-(vec3<f32>(x_519.x, x_519.y, x_519.z)) * vec3<f32>(x_522, x_522, x_522)) + x_525);
      let x_527 : vec3<f32> = u_xlat5;
      let x_528 : vec3<f32> = u_xlat5;
      u_xlat26 = dot(x_527, x_528);
      let x_530 : f32 = u_xlat26;
      u_xlat26 = inverseSqrt(x_530);
      let x_532 : f32 = u_xlat26;
      let x_534 : vec3<f32> = u_xlat5;
      u_xlat5 = (vec3<f32>(x_532, x_532, x_532) * x_534);
      let x_536 : vec4<f32> = u_xlat1;
      let x_538 : vec3<f32> = u_xlat5;
      u_xlat5.x = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), x_538);
      let x_542 : f32 = u_xlat5.x;
      u_xlat5.x = max(x_542, 0.0f);
      let x_546 : f32 = u_xlat5.x;
      u_xlat5.x = log2(x_546);
      let x_549 : f32 = u_xlat23;
      let x_551 : f32 = u_xlat5.x;
      u_xlat5.x = (x_549 * x_551);
      let x_555 : f32 = u_xlat5.x;
      u_xlat5.x = exp2(x_555);
      let x_559 : f32 = u_xlat5.x;
      u_xlat5.x = min(x_559, 1.0f);
      let x_562 : f32 = u_xlat25;
      let x_564 : f32 = u_xlat5.x;
      u_xlat5.x = (x_562 * x_564);
      let x_567 : vec3<f32> = u_xlat5;
      let x_569 : i32 = u_xlati_loop_1;
      let x_571 : vec4<f32> = x_21.unity_LightColor[x_569];
      let x_574 : vec3<f32> = u_xlat4;
      u_xlat4 = ((vec3<f32>(x_567.x, x_567.x, x_567.x) * vec3<f32>(x_571.x, x_571.y, x_571.z)) + x_574);
    }
    let x_576 : f32 = u_xlat25;
    let x_578 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_576, x_576, x_576) * x_578);
    let x_580 : vec3<f32> = u_xlat5;
    u_xlat5 = min(x_580, vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_583 : vec3<f32> = u_xlat3;
    let x_584 : vec3<f32> = u_xlat5;
    u_xlat3 = (x_583 + x_584);

    continuing {
      let x_586 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_586 + 1i);
    }
  }
  let x_590 : vec3<f32> = u_xlat4;
  let x_593 : vec4<f32> = x_21.x_SpecColor;
  vs_COLOR1 = (x_590 * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec3<f32> = vs_COLOR1;
  vs_COLOR1 = clamp(x_596, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_602 : vec3<f32> = u_xlat3;
  let x_603 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = vs_COLOR0;
  let x_609 : vec3<f32> = clamp(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_610 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = x_21.x_Color.w;
  vs_COLOR0.w = x_613;
  let x_617 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_617, 0.0f, 1.0f);
  let x_624 : vec3<f32> = in_TEXCOORD0;
  let x_628 : vec4<f32> = x_21.x_MainTex_ST;
  let x_632 : vec4<f32> = x_21.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_632.z, x_632.w));
  let x_635 : f32 = u_xlat21;
  u_xlat0.x = sqrt(x_635);
  let x_639 : f32 = u_xlat0.x;
  let x_642 : f32 = x_21.unity_FogParams.x;
  u_xlat0.x = (x_639 * x_642);
  let x_646 : f32 = u_xlat0.x;
  let x_648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_646 * -(x_648));
  let x_654 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_654);
  let x_656 : vec3<f32> = in_POSITION0;
  let x_659 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_656.y, x_656.y, x_656.y, x_656.y) * x_659);
  let x_662 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_663 : vec3<f32> = in_POSITION0;
  let x_666 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_662 * vec4<f32>(x_663.x, x_663.x, x_663.x, x_663.x)) + x_666);
  let x_669 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_670 : vec3<f32> = in_POSITION0;
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_669 * vec4<f32>(x_670.z, x_670.z, x_670.z, x_670.z)) + x_673);
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_675 + x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_683 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_679.y, x_679.y, x_679.y, x_679.y) * x_683);
  let x_686 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_687 : vec4<f32> = u_xlat0;
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_686 * vec4<f32>(x_687.x, x_687.x, x_687.x, x_687.x)) + x_690);
  let x_693 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_694 : vec4<f32> = u_xlat0;
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_693 * vec4<f32>(x_694.z, x_694.z, x_694.z, x_694.z)) + x_697);
  let x_704 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_705 : vec4<f32> = u_xlat0;
  let x_708 : vec4<f32> = u_xlat1;
  gl_Position = ((x_704 * vec4<f32>(x_705.w, x_705.w, x_705.w, x_705.w)) + x_708);
  return;
}

struct main_out {
  @location(1)
  vs_COLOR1_1 : vec3<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD1_1 : f32,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_COLOR1, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1, gl_Position);
}

