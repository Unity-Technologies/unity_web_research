type Arr = array<vec4<f32>, 8u>;

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_LightColor : Arr_1,
  unity_LightPosition : Arr_1,
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

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

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
  var u_xlatb25 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_25 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_30 : vec4<f32> = x_19.unity_MatrixV[1i];
  let x_32 : vec3<f32> = (vec3<f32>(x_25.y, x_25.y, x_25.y) * vec3<f32>(x_30.x, x_30.y, x_30.z));
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_32.x, x_32.y, x_32.z, x_33.w);
  let x_36 : vec4<f32> = x_19.unity_MatrixV[0i];
  let x_39 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = ((vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(x_39.x, x_39.x, x_39.x)) + vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_48 : vec4<f32> = x_19.unity_MatrixV[2i];
  let x_51 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_51.z, x_51.z, x_51.z)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_61 : vec4<f32> = x_19.unity_MatrixV[3i];
  let x_64 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_64.w, x_64.w, x_64.w)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_74 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_77 : vec4<f32> = x_19.unity_MatrixV[1i];
  let x_79 : vec3<f32> = (vec3<f32>(x_74.y, x_74.y, x_74.y) * vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_83 : vec4<f32> = x_19.unity_MatrixV[0i];
  let x_86 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec3<f32> = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_86.x, x_86.x, x_86.x)) + vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec4<f32> = x_19.unity_MatrixV[2i];
  let x_98 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_101 : vec4<f32> = u_xlat1;
  let x_103 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_98.z, x_98.z, x_98.z)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = x_19.unity_MatrixV[3i];
  let x_110 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_110.w, x_110.w, x_110.w)) + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_121 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_124 : vec4<f32> = x_19.unity_MatrixV[1i];
  u_xlat2 = (vec3<f32>(x_121.y, x_121.y, x_121.y) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec4<f32> = x_19.unity_MatrixV[0i];
  let x_131 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_134 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_131.x, x_131.x, x_131.x)) + x_134);
  let x_137 : vec4<f32> = x_19.unity_MatrixV[2i];
  let x_140 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_140.z, x_140.z, x_140.z)) + x_143);
  let x_146 : vec4<f32> = x_19.unity_MatrixV[3i];
  let x_149 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_149.w, x_149.w, x_149.w)) + x_152);
  let x_156 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_159 : vec4<f32> = x_19.unity_MatrixV[1i];
  u_xlat3 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec4<f32> = x_19.unity_MatrixV[0i];
  let x_166 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_169 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + x_169);
  let x_172 : vec4<f32> = x_19.unity_MatrixV[2i];
  let x_175 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_178 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_175.z, x_175.z, x_175.z)) + x_178);
  let x_181 : vec4<f32> = x_19.unity_MatrixV[3i];
  let x_184 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_187 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_184.w, x_184.w, x_184.w)) + x_187);
  let x_191 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_195 : vec4<f32> = x_19.unity_MatrixInvV[0i];
  u_xlat4 = (vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_195.y, x_195.y, x_195.y));
  let x_199 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_202 : vec4<f32> = x_19.unity_MatrixInvV[0i];
  let x_205 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + x_205);
  let x_208 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_211 : vec4<f32> = x_19.unity_MatrixInvV[0i];
  let x_214 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_211.z, x_211.z, x_211.z)) + x_214);
  let x_217 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_220 : vec4<f32> = x_19.unity_MatrixInvV[0i];
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + x_223);
  let x_227 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_230 : vec4<f32> = x_19.unity_MatrixInvV[1i];
  u_xlat5 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_230.y, x_230.y, x_230.y));
  let x_234 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_237 : vec4<f32> = x_19.unity_MatrixInvV[1i];
  let x_240 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_237.x, x_237.x, x_237.x)) + x_240);
  let x_243 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_246 : vec4<f32> = x_19.unity_MatrixInvV[1i];
  let x_249 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_246.z, x_246.z, x_246.z)) + x_249);
  let x_252 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_255 : vec4<f32> = x_19.unity_MatrixInvV[1i];
  let x_258 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_255.w, x_255.w, x_255.w)) + x_258);
  let x_262 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_265 : vec4<f32> = x_19.unity_MatrixInvV[2i];
  u_xlat6 = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_265.y, x_265.y, x_265.y));
  let x_269 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_272 : vec4<f32> = x_19.unity_MatrixInvV[2i];
  let x_275 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_272.x, x_272.x, x_272.x)) + x_275);
  let x_278 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_281 : vec4<f32> = x_19.unity_MatrixInvV[2i];
  let x_284 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_281.z, x_281.z, x_281.z)) + x_284);
  let x_287 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_290 : vec4<f32> = x_19.unity_MatrixInvV[2i];
  let x_293 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_290.w, x_290.w, x_290.w)) + x_293);
  let x_295 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = in_POSITION0;
  let x_301 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_299.y, x_299.y, x_299.y));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = in_POSITION0;
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec3<f32> = u_xlat2;
  let x_315 : vec3<f32> = in_POSITION0;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = ((x_314 * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat3;
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = (x_323 + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = u_xlat4;
  let x_331 : vec3<f32> = in_NORMAL0;
  u_xlat1.x = dot(x_329, x_331);
  let x_336 : vec3<f32> = u_xlat5;
  let x_337 : vec3<f32> = in_NORMAL0;
  u_xlat1.y = dot(x_336, x_337);
  let x_341 : vec3<f32> = u_xlat6;
  let x_342 : vec3<f32> = in_NORMAL0;
  u_xlat1.z = dot(x_341, x_342);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat21;
  let x_356 : vec4<f32> = u_xlat1;
  let x_358 : vec3<f32> = (vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : f32 = u_xlat21;
  u_xlat22 = inverseSqrt(x_367);
  let x_371 : vec4<f32> = x_19.x_Color;
  let x_375 : vec4<f32> = x_19.glstate_lightmodel_ambient;
  let x_380 : vec4<f32> = x_19.x_Emission;
  u_xlat2 = ((vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(x_375.x, x_375.y, x_375.z)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_387 : f32 = x_19.x_Shininess;
  u_xlat23 = (x_387 * 128.0f);
  let x_390 : vec3<f32> = u_xlat2;
  u_xlat3 = x_390;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_402 : i32 = u_xlati_loop_1;
    let x_406 : i32 = x_19.unity_VertexLightParams.x;
    if ((x_402 < x_406)) {
    } else {
      break;
    }
    let x_410 : vec4<f32> = u_xlat1;
    let x_412 : i32 = u_xlati_loop_1;
    let x_414 : vec4<f32> = x_19.unity_LightPosition[x_412];
    u_xlat25 = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_417 : f32 = u_xlat25;
    u_xlat25 = max(x_417, 0.0f);
    let x_419 : f32 = u_xlat25;
    let x_422 : vec4<f32> = x_19.x_Color;
    u_xlat5 = (vec3<f32>(x_419, x_419, x_419) * vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_425 : vec3<f32> = u_xlat5;
    let x_426 : i32 = u_xlati_loop_1;
    let x_428 : vec4<f32> = x_19.unity_LightColor[x_426];
    u_xlat5 = (x_425 * vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_433 : f32 = u_xlat25;
    u_xlatb25 = (0.0f < x_433);
    let x_435 : bool = u_xlatb25;
    if (x_435) {
      let x_438 : vec4<f32> = u_xlat0;
      let x_441 : f32 = u_xlat22;
      let x_444 : i32 = u_xlati_loop_1;
      let x_446 : vec4<f32> = x_19.unity_LightPosition[x_444];
      u_xlat6 = ((-(vec3<f32>(x_438.x, x_438.y, x_438.z)) * vec3<f32>(x_441, x_441, x_441)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
      let x_449 : vec3<f32> = u_xlat6;
      let x_450 : vec3<f32> = u_xlat6;
      u_xlat25 = dot(x_449, x_450);
      let x_452 : f32 = u_xlat25;
      u_xlat25 = inverseSqrt(x_452);
      let x_454 : f32 = u_xlat25;
      let x_456 : vec3<f32> = u_xlat6;
      u_xlat6 = (vec3<f32>(x_454, x_454, x_454) * x_456);
      let x_458 : vec4<f32> = u_xlat1;
      let x_460 : vec3<f32> = u_xlat6;
      u_xlat25 = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), x_460);
      let x_462 : f32 = u_xlat25;
      u_xlat25 = max(x_462, 0.0f);
      let x_464 : f32 = u_xlat25;
      u_xlat25 = log2(x_464);
      let x_466 : f32 = u_xlat23;
      let x_467 : f32 = u_xlat25;
      u_xlat25 = (x_466 * x_467);
      let x_469 : f32 = u_xlat25;
      u_xlat25 = exp2(x_469);
      let x_471 : f32 = u_xlat25;
      u_xlat25 = min(x_471, 1.0f);
      let x_474 : f32 = u_xlat25;
      u_xlat25 = (x_474 * 0.5f);
      let x_477 : f32 = u_xlat25;
      let x_479 : i32 = u_xlati_loop_1;
      let x_481 : vec4<f32> = x_19.unity_LightColor[x_479];
      let x_484 : vec3<f32> = u_xlat4;
      u_xlat4 = ((vec3<f32>(x_477, x_477, x_477) * vec3<f32>(x_481.x, x_481.y, x_481.z)) + x_484);
    }
    let x_486 : vec3<f32> = u_xlat5;
    u_xlat5 = (x_486 * vec3<f32>(0.5f, 0.5f, 0.5f));
    let x_489 : vec3<f32> = u_xlat5;
    u_xlat5 = min(x_489, vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_492 : vec3<f32> = u_xlat3;
    let x_493 : vec3<f32> = u_xlat5;
    u_xlat3 = (x_492 + x_493);

    continuing {
      let x_495 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_495 + 1i);
    }
  }
  let x_499 : vec3<f32> = u_xlat4;
  let x_502 : vec4<f32> = x_19.x_SpecColor;
  vs_COLOR1 = (x_499 * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec3<f32> = vs_COLOR1;
  vs_COLOR1 = clamp(x_505, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_511 : vec3<f32> = u_xlat3;
  let x_512 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = vs_COLOR0;
  let x_518 : vec3<f32> = clamp(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_519 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_523 : f32 = x_19.x_Color.w;
  vs_COLOR0.w = x_523;
  let x_527 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_527, 0.0f, 1.0f);
  let x_534 : vec3<f32> = in_TEXCOORD0;
  let x_538 : vec4<f32> = x_19.x_MainTex_ST;
  let x_542 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_538.x, x_538.y)) + vec2<f32>(x_542.z, x_542.w));
  let x_545 : f32 = u_xlat21;
  u_xlat0.x = sqrt(x_545);
  let x_549 : f32 = u_xlat0.x;
  let x_552 : f32 = x_19.unity_FogParams.x;
  u_xlat0.x = (x_549 * x_552);
  let x_556 : f32 = u_xlat0.x;
  let x_558 : f32 = u_xlat0.x;
  u_xlat0.x = (x_556 * -(x_558));
  let x_564 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_564);
  let x_566 : vec3<f32> = in_POSITION0;
  let x_569 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_566.y, x_566.y, x_566.y, x_566.y) * x_569);
  let x_572 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_573 : vec3<f32> = in_POSITION0;
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_572 * vec4<f32>(x_573.x, x_573.x, x_573.x, x_573.x)) + x_576);
  let x_579 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_580 : vec3<f32> = in_POSITION0;
  let x_583 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_579 * vec4<f32>(x_580.z, x_580.z, x_580.z, x_580.z)) + x_583);
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat0 = (x_585 + x_587);
  let x_589 : vec4<f32> = u_xlat0;
  let x_593 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_589.y, x_589.y, x_589.y, x_589.y) * x_593);
  let x_596 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_597 : vec4<f32> = u_xlat0;
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_596 * vec4<f32>(x_597.x, x_597.x, x_597.x, x_597.x)) + x_600);
  let x_603 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_603 * vec4<f32>(x_604.z, x_604.z, x_604.z, x_604.z)) + x_607);
  let x_614 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_615 : vec4<f32> = u_xlat0;
  let x_618 : vec4<f32> = u_xlat1;
  gl_Position = ((x_614 * vec4<f32>(x_615.w, x_615.w, x_615.w, x_615.w)) + x_618);
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

