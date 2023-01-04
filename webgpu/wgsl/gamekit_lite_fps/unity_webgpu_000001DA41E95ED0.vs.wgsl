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

var<private> u_xlati4 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(7) var<uniform> x_95 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var<uniform> x_329 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD6 : vec3<f32>;

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
  u_xlati4 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati4;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati4;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati4;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati4;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_80 : i32 = u_xlati4;
  let x_83 : vec4<f32> = x_42.unity_Builtins0Array[(x_80 / 8i)].unity_ObjectToWorldArray[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_85.w, x_85.w, x_85.w)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  let x_97 : vec4<f32> = x_95.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_91.y, x_91.y, x_91.y, x_91.y) * x_97);
  let x_100 : vec4<f32> = x_95.unity_MatrixVP[0i];
  let x_101 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_100 * vec4<f32>(x_101.x, x_101.x, x_101.x, x_101.x)) + x_104);
  let x_107 : vec4<f32> = x_95.unity_MatrixVP[2i];
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_107 * vec4<f32>(x_108.z, x_108.z, x_108.z, x_108.z)) + x_111);
  let x_119 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_120 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat1;
  gl_Position = ((x_119 * vec4<f32>(x_120.w, x_120.w, x_120.w, x_120.w)) + x_123);
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_130 : i32 = u_xlati4;
  let x_133 : vec4<f32> = x_42.unity_Builtins0Array[(x_130 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.x = dot(x_129, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_140 : i32 = u_xlati4;
  let x_143 : vec4<f32> = x_42.unity_Builtins0Array[(x_140 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.y = dot(x_139, vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_147 : vec3<f32> = in_NORMAL0;
  let x_148 : i32 = u_xlati4;
  let x_151 : vec4<f32> = x_42.unity_Builtins0Array[(x_148 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.z = dot(x_147, vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(vec3<f32>(x_158.x, x_158.y, x_158.z), vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_165);
  let x_168 : vec3<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_168.x, x_168.x, x_168.x) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec3<f32> = u_xlat4;
  vs_TEXCOORD0 = x_174;
  let x_177 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_177;
  let x_183 : vec2<f32> = in_TEXCOORD0;
  let x_185 : vec4<f32> = x_95.x_MainTex_ST;
  let x_189 : vec4<f32> = x_95.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_183 * vec2<f32>(x_185.x, x_185.y)) + vec2<f32>(x_189.z, x_189.w));
  let x_193 : f32 = u_xlat2.y;
  let x_196 : f32 = x_95.unity_MatrixV[1i].z;
  u_xlat1.x = (x_193 * x_196);
  let x_200 : f32 = x_95.unity_MatrixV[0i].z;
  let x_202 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_200 * x_202) + x_205);
  let x_209 : f32 = x_95.unity_MatrixV[2i].z;
  let x_211 : f32 = u_xlat2.z;
  let x_214 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_209 * x_211) + x_214);
  let x_218 : f32 = x_95.unity_MatrixV[3i].z;
  let x_221 : f32 = u_xlat2.w;
  let x_224 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_218 * x_221) + x_224);
  let x_229 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = -(x_229);
  let x_232 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = x_95.unity_MatrixVP[1i];
  let x_237 : vec3<f32> = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_235.x, x_235.y, x_235.w));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec4<f32> = x_95.unity_MatrixVP[0i];
  let x_243 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.w) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : vec4<f32> = x_95.unity_MatrixVP[2i];
  let x_254 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.w) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_265 : vec4<f32> = u_xlat2;
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.w) * vec3<f32>(x_265.w, x_265.w, x_265.w)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat1;
  let x_277 : vec2<f32> = (vec2<f32>(x_273.x, x_273.z) * vec2<f32>(0.5f, 0.5f));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_278.y, x_277.y, x_278.w);
  let x_281 : f32 = u_xlat1.y;
  let x_283 : f32 = x_95.x_ProjectionParams.x;
  u_xlat1.x = (x_281 * x_283);
  let x_287 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_287;
  let x_290 : f32 = u_xlat1.x;
  u_xlat2.w = (x_290 * 0.5f);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  let x_297 : vec2<f32> = (vec2<f32>(x_293.z, x_293.z) + vec2<f32>(x_295.x, x_295.w));
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_304 : f32 = u_xlat4.y;
  let x_306 : f32 = u_xlat4.y;
  u_xlat1.x = (x_304 * x_306);
  let x_310 : f32 = u_xlat4.x;
  let x_312 : f32 = u_xlat4.x;
  let x_315 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_310 * x_312) + -(x_315));
  let x_319 : vec3<f32> = u_xlat4;
  let x_321 : vec3<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_319.y, x_319.z, x_319.z, x_319.x) * vec4<f32>(x_321.x, x_321.y, x_321.z, x_321.z));
  let x_330 : i32 = u_xlati0;
  let x_333 : vec4<f32> = x_329.unity_Builtins2Array[(x_330 / 7i)].unity_SHBrArray;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_333, x_334);
  let x_337 : i32 = u_xlati0;
  let x_341 : vec4<f32> = x_329.unity_Builtins2Array[(x_337 / 7i)].unity_SHBgArray;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_341, x_342);
  let x_345 : i32 = u_xlati0;
  let x_349 : vec4<f32> = x_329.unity_Builtins2Array[(x_345 / 7i)].unity_SHBbArray;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_349, x_350);
  let x_354 : i32 = u_xlati0;
  let x_358 : vec4<f32> = x_329.unity_Builtins2Array[(x_354 / 7i)].unity_SHCArray;
  let x_360 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = u_xlat3;
  vs_TEXCOORD6 = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.x, x_360.x)) + x_363);
  let x_367 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_367);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec3<f32>,
  @location(5) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_SV_InstanceID0);
}

