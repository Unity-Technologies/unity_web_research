const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins0Array_Type {
  unity_ObjectToWorldArray : mat4x4<f32>,
  unity_WorldToObjectArray : mat4x4<f32>,
}

type Arr = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  unity_Builtins0Array : Arr,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_169 : UnityDrawCallInfo;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_184 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec4<f32>;
  var x_95 : vec3<f32>;
  var u_xlati5 : i32;
  var u_xlat10 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_29 : vec4<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_54 : u32 = x_35.unity_MetaVertexControl.x;
  if ((x_54 != 0u)) {
    let x_61 : vec4<f32> = u_xlat0;
    x_58 = vec3<f32>(x_61.x, x_61.y, x_61.z);
  } else {
    let x_64 : vec4<f32> = in_POSITION0;
    x_58 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  }
  let x_66 : vec3<f32> = x_58;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = u_xlat0.z;
  u_xlatb15 = (0.0f < x_71);
  let x_74 : bool = u_xlatb15;
  u_xlat1.z = select(0.0f, 0.0001f, x_74);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_86 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_88 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_93 != 0u)) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec4<f32> = u_xlat0;
    x_95 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_95;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_106.y, x_106.y, x_106.y, x_106.y) * x_111);
  let x_115 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_115 * vec4<f32>(x_116.x, x_116.x, x_116.x, x_116.x)) + x_119);
  let x_123 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_123 * vec4<f32>(x_124.z, x_124.z, x_124.z, x_124.z)) + x_127);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_133 + x_135);
  let x_142 : vec4<f32> = in_TEXCOORD0;
  let x_146 : vec4<f32> = x_35.x_MainTex_ST;
  let x_150 : vec4<f32> = x_35.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(x_150.z, x_150.w));
  let x_156 : f32 = in_TANGENT0.w;
  let x_159 : f32 = x_35.unity_WorldTransformParams.w;
  u_xlat0.x = (x_156 * x_159);
  let x_166 : i32 = gl_InstanceIndex;
  let x_172 : i32 = x_169.unity_BaseInstanceID;
  u_xlati5 = (x_166 + x_172);
  let x_174 : i32 = u_xlati5;
  u_xlati5 = (x_174 << bitcast<u32>(3i));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_185 : i32 = u_xlati5;
  let x_189 : vec4<f32> = x_184.unity_Builtins0Array[(x_185 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.y = dot(x_178, vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec3<f32> = in_NORMAL0;
  let x_194 : i32 = u_xlati5;
  let x_197 : vec4<f32> = x_184.unity_Builtins0Array[(x_194 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.z = dot(x_193, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = in_NORMAL0;
  let x_202 : i32 = u_xlati5;
  let x_205 : vec4<f32> = x_184.unity_Builtins0Array[(x_202 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.x = dot(x_201, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_215);
  let x_217 : f32 = u_xlat10;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = in_TANGENT0;
  let x_227 : i32 = u_xlati5;
  let x_230 : vec4<f32> = x_184.unity_Builtins0Array[(x_227 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat2 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_230.y, x_230.z, x_230.x));
  let x_233 : i32 = u_xlati5;
  let x_236 : vec4<f32> = x_184.unity_Builtins0Array[(x_233 / 8i)].unity_ObjectToWorldArray[0i];
  let x_238 : vec4<f32> = in_TANGENT0;
  let x_241 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.x, x_238.x, x_238.x)) + x_241);
  let x_243 : i32 = u_xlati5;
  let x_246 : vec4<f32> = x_184.unity_Builtins0Array[(x_243 / 8i)].unity_ObjectToWorldArray[2i];
  let x_248 : vec4<f32> = in_TANGENT0;
  let x_251 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_246.y, x_246.z, x_246.x) * vec3<f32>(x_248.z, x_248.z, x_248.z)) + x_251);
  let x_253 : vec3<f32> = u_xlat2;
  let x_254 : vec3<f32> = u_xlat2;
  u_xlat10 = dot(x_253, x_254);
  let x_256 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_256);
  let x_258 : f32 = u_xlat10;
  let x_260 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_258, x_258, x_258) * x_260);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = u_xlat2;
  let x_266 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) * x_265);
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = ((vec3<f32>(x_269.z, x_269.x, x_269.y) * vec3<f32>(x_271.y, x_271.z, x_271.x)) + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = u_xlat3;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_285.y, x_284.y, x_284.z);
  let x_290 : f32 = u_xlat0.x;
  vs_TEXCOORD1.y = x_290;
  let x_294 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_294;
  let x_297 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_297;
  let x_299 : vec4<f32> = in_POSITION0;
  let x_301 : i32 = u_xlati5;
  let x_304 : vec4<f32> = x_184.unity_Builtins0Array[(x_301 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat3 = (vec4<f32>(x_299.y, x_299.y, x_299.y, x_299.y) * x_304);
  let x_306 : i32 = u_xlati5;
  let x_309 : vec4<f32> = x_184.unity_Builtins0Array[(x_306 / 8i)].unity_ObjectToWorldArray[0i];
  let x_310 : vec4<f32> = in_POSITION0;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_309 * vec4<f32>(x_310.x, x_310.x, x_310.x, x_310.x)) + x_313);
  let x_315 : i32 = u_xlati5;
  let x_318 : vec4<f32> = x_184.unity_Builtins0Array[(x_315 / 8i)].unity_ObjectToWorldArray[2i];
  let x_319 : vec4<f32> = in_POSITION0;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_318 * vec4<f32>(x_319.z, x_319.z, x_319.z, x_319.z)) + x_322);
  let x_325 : i32 = u_xlati5;
  let x_328 : vec4<f32> = x_184.unity_Builtins0Array[(x_325 / 8i)].unity_ObjectToWorldArray[3i];
  let x_330 : vec4<f32> = in_POSITION0;
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.w, x_330.w, x_330.w)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  let x_337 : i32 = u_xlati5;
  let x_340 : vec4<f32> = x_184.unity_Builtins0Array[(x_337 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat3 = (x_336 + x_340);
  let x_343 : f32 = u_xlat4.x;
  vs_TEXCOORD1.w = x_343;
  let x_347 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_347;
  let x_351 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_351;
  let x_354 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_354;
  let x_357 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_357;
  let x_360 : f32 = u_xlat4.y;
  vs_TEXCOORD2.w = x_360;
  let x_363 : f32 = u_xlat4.z;
  vs_TEXCOORD3.w = x_363;
  let x_366 : f32 = u_xlat0.z;
  vs_TEXCOORD2.y = x_366;
  let x_369 : f32 = u_xlat0.w;
  vs_TEXCOORD3.y = x_369;
  let x_373 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_373;
  let x_375 : f32 = u_xlat3.y;
  let x_377 : f32 = x_35.unity_MatrixV[1i].z;
  u_xlat0.x = (x_375 * x_377);
  let x_381 : f32 = x_35.unity_MatrixV[0i].z;
  let x_383 : f32 = u_xlat3.x;
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_381 * x_383) + x_386);
  let x_390 : f32 = x_35.unity_MatrixV[2i].z;
  let x_392 : f32 = u_xlat3.z;
  let x_395 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_390 * x_392) + x_395);
  let x_399 : f32 = x_35.unity_MatrixV[3i].z;
  let x_401 : f32 = u_xlat3.w;
  let x_404 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_399 * x_401) + x_404);
  let x_409 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_409);
  let x_412 : vec4<f32> = u_xlat3;
  let x_415 : vec4<f32> = x_35.unity_MatrixVP[1i];
  let x_417 : vec3<f32> = (vec3<f32>(x_412.y, x_412.y, x_412.y) * vec3<f32>(x_415.x, x_415.y, x_415.w));
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_423 : vec4<f32> = u_xlat3;
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.w) * vec3<f32>(x_423.x, x_423.x, x_423.x)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_434 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.w) * vec3<f32>(x_434.z, x_434.z, x_434.z)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : vec4<f32> = x_35.unity_MatrixVP[3i];
  let x_445 : vec4<f32> = u_xlat3;
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.w) * vec3<f32>(x_445.w, x_445.w, x_445.w)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec2<f32> = (vec2<f32>(x_453.x, x_453.z) * vec2<f32>(0.5f, 0.5f));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_458.y, x_457.y, x_458.w);
  let x_461 : f32 = u_xlat0.y;
  let x_463 : f32 = x_35.x_ProjectionParams.x;
  u_xlat0.x = (x_461 * x_463);
  let x_467 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_467;
  let x_470 : f32 = u_xlat0.x;
  u_xlat1.w = (x_470 * 0.5f);
  let x_473 : vec4<f32> = u_xlat1;
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec2<f32> = (vec2<f32>(x_473.z, x_473.z) + vec2<f32>(x_475.x, x_475.w));
  let x_478 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
  let x_482 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_482);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_NORMAL0_param : vec3<f32>, @location(6) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0);
}

