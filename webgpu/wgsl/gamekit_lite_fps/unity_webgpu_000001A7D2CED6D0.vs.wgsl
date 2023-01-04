let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr_1 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_1,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlati5 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_96 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat10 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_430 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati5 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati5;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati5;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati5;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati5;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati5;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_98 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_98);
  let x_101 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_102 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_101 * vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x)) + x_105);
  let x_108 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_108 * vec4<f32>(x_109.z, x_109.z, x_109.z, x_109.z)) + x_112);
  let x_120 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_121 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat3;
  gl_Position = ((x_120 * vec4<f32>(x_121.w, x_121.w, x_121.w, x_121.w)) + x_124);
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_131 : i32 = u_xlati5;
  let x_134 : vec4<f32> = x_42.unity_Builtins0Array[(x_131 / 8i)].unity_ObjectToWorldArray[1i];
  let x_136 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_134.y, x_134.z, x_134.x));
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : i32 = u_xlati5;
  let x_142 : vec4<f32> = x_42.unity_Builtins0Array[(x_139 / 8i)].unity_ObjectToWorldArray[0i];
  let x_144 : vec4<f32> = in_TANGENT0;
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.y, x_142.z, x_142.x) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : i32 = u_xlati5;
  let x_155 : vec4<f32> = x_42.unity_Builtins0Array[(x_152 / 8i)].unity_ObjectToWorldArray[2i];
  let x_157 : vec4<f32> = in_TANGENT0;
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.y, x_155.z, x_155.x) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_172);
  let x_174 : f32 = u_xlat10;
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec3<f32> = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_184 : vec3<f32> = in_NORMAL0;
  let x_185 : i32 = u_xlati5;
  let x_188 : vec4<f32> = x_42.unity_Builtins0Array[(x_185 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_184, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_193 : vec3<f32> = in_NORMAL0;
  let x_194 : i32 = u_xlati5;
  let x_197 : vec4<f32> = x_42.unity_Builtins0Array[(x_194 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_193, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec3<f32> = in_NORMAL0;
  let x_202 : i32 = u_xlati5;
  let x_205 : vec4<f32> = x_42.unity_Builtins0Array[(x_202 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_201, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_212 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_219 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_219);
  let x_222 : vec3<f32> = u_xlat5;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_222.x, x_222.x, x_222.x, x_222.x) * vec4<f32>(x_224.x, x_224.y, x_224.z, x_224.z));
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_232.y, x_232.w, x_232.x) * vec3<f32>(x_234.y, x_234.z, x_234.x)) + -(x_237));
  let x_244 : f32 = in_TANGENT0.w;
  let x_247 : f32 = x_96.unity_WorldTransformParams.w;
  u_xlat16 = (x_244 * x_247);
  let x_249 : vec3<f32> = u_xlat5;
  let x_250 : f32 = u_xlat16;
  u_xlat5 = (x_249 * vec3<f32>(x_250, x_250, x_250));
  let x_255 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_255;
  let x_259 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_259;
  let x_262 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_262;
  let x_265 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_265;
  let x_269 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_269;
  let x_273 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_273;
  let x_276 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_276;
  let x_279 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_279;
  let x_282 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_282;
  let x_285 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_285;
  let x_288 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_288;
  let x_291 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_291;
  let x_295 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_295;
  let x_301 : vec2<f32> = in_TEXCOORD0;
  let x_304 : vec4<f32> = x_96.x_MainTex_ST;
  let x_308 : vec4<f32> = x_96.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_301 * vec2<f32>(x_304.x, x_304.y)) + vec2<f32>(x_308.z, x_308.w));
  let x_312 : f32 = u_xlat2.y;
  let x_314 : f32 = x_96.unity_MatrixV[1i].z;
  u_xlat5.x = (x_312 * x_314);
  let x_318 : f32 = x_96.unity_MatrixV[0i].z;
  let x_320 : f32 = u_xlat2.x;
  let x_323 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_318 * x_320) + x_323);
  let x_327 : f32 = x_96.unity_MatrixV[2i].z;
  let x_329 : f32 = u_xlat2.z;
  let x_332 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_327 * x_329) + x_332);
  let x_336 : f32 = x_96.unity_MatrixV[3i].z;
  let x_338 : f32 = u_xlat2.w;
  let x_341 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_336 * x_338) + x_341);
  let x_346 : f32 = u_xlat5.x;
  vs_TEXCOORD4.z = -(x_346);
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat5 = (vec3<f32>(x_349.y, x_349.y, x_349.y) * vec3<f32>(x_352.x, x_352.y, x_352.w));
  let x_356 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_358 : vec4<f32> = u_xlat2;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_356.x, x_356.y, x_356.w) * vec3<f32>(x_358.x, x_358.x, x_358.x)) + x_361);
  let x_364 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_366 : vec4<f32> = u_xlat2;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_364.x, x_364.y, x_364.w) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + x_369);
  let x_372 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_374 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_372.x, x_372.y, x_372.w) * vec3<f32>(x_374.w, x_374.w, x_374.w)) + x_377);
  let x_379 : vec3<f32> = u_xlat5;
  let x_383 : vec2<f32> = (vec2<f32>(x_379.x, x_379.z) * vec2<f32>(0.5f, 0.5f));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_384.y, x_383.y, x_384.w);
  let x_387 : f32 = u_xlat5.y;
  let x_389 : f32 = x_96.x_ProjectionParams.x;
  u_xlat5.x = (x_387 * x_389);
  let x_393 : f32 = u_xlat5.z;
  vs_TEXCOORD4.w = x_393;
  let x_396 : f32 = u_xlat5.x;
  u_xlat1.w = (x_396 * 0.5f);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.z, x_399.z) + vec2<f32>(x_401.x, x_401.w));
  let x_404 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_407 : f32 = u_xlat4.y;
  let x_409 : f32 = u_xlat4.y;
  u_xlat5.x = (x_407 * x_409);
  let x_413 : f32 = u_xlat4.x;
  let x_415 : f32 = u_xlat4.x;
  let x_418 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_413 * x_415) + -(x_418));
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_422.y, x_422.w, x_422.z, x_422.x) * x_424);
  let x_431 : i32 = u_xlati0;
  let x_434 : vec4<f32> = x_430.unity_Builtins2Array[(x_431 / 7i)].unity_SHBrArray;
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_434, x_435);
  let x_438 : i32 = u_xlati0;
  let x_441 : vec4<f32> = x_430.unity_Builtins2Array[(x_438 / 7i)].unity_SHBgArray;
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_441, x_442);
  let x_445 : i32 = u_xlati0;
  let x_449 : vec4<f32> = x_430.unity_Builtins2Array[(x_445 / 7i)].unity_SHBbArray;
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_449, x_450);
  let x_455 : i32 = u_xlati0;
  let x_459 : vec4<f32> = x_430.unity_Builtins2Array[(x_455 / 7i)].unity_SHCArray;
  let x_461 : vec3<f32> = u_xlat5;
  let x_464 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461.x, x_461.x, x_461.x)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_472 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_472);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5, vs_SV_InstanceID0);
}

