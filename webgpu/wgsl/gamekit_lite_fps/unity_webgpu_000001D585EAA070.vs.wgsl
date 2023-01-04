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

var<private> u_xlati5 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(12) var<uniform> x_95 : VGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var<uniform> x_340 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  let x_80 : i32 = u_xlati5;
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
  let x_114 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_114 * vec4<f32>(x_115.w, x_115.w, x_115.w, x_115.w)) + x_118);
  let x_125 : vec4<f32> = u_xlat1;
  gl_Position = x_125;
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_132 : i32 = u_xlati5;
  let x_135 : vec4<f32> = x_42.unity_Builtins0Array[(x_132 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_131, vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_141 : vec3<f32> = in_NORMAL0;
  let x_142 : i32 = u_xlati5;
  let x_145 : vec4<f32> = x_42.unity_Builtins0Array[(x_142 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_141, vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_149 : vec3<f32> = in_NORMAL0;
  let x_150 : i32 = u_xlati5;
  let x_153 : vec4<f32> = x_42.unity_Builtins0Array[(x_150 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_149, vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_160.x, x_160.y, x_160.z), vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_167 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_167);
  let x_170 : vec3<f32> = u_xlat5;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_170.x, x_170.x, x_170.x) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_176 : vec3<f32> = u_xlat5;
  vs_TEXCOORD0 = x_176;
  let x_179 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_179;
  let x_185 : vec2<f32> = in_TEXCOORD0;
  let x_187 : vec4<f32> = x_95.x_MainTex_ST;
  let x_191 : vec4<f32> = x_95.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_185 * vec2<f32>(x_187.x, x_187.y)) + vec2<f32>(x_191.z, x_191.w));
  let x_195 : f32 = u_xlat2.y;
  let x_198 : f32 = x_95.unity_MatrixV[1i].z;
  u_xlat3.x = (x_195 * x_198);
  let x_202 : f32 = x_95.unity_MatrixV[0i].z;
  let x_204 : f32 = u_xlat2.x;
  let x_207 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_202 * x_204) + x_207);
  let x_211 : f32 = x_95.unity_MatrixV[2i].z;
  let x_213 : f32 = u_xlat2.z;
  let x_216 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_211 * x_213) + x_216);
  let x_220 : f32 = x_95.unity_MatrixV[3i].z;
  let x_223 : f32 = u_xlat2.w;
  let x_226 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_220 * x_223) + x_226);
  let x_231 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = -(x_231);
  let x_234 : vec4<f32> = u_xlat2;
  let x_237 : vec4<f32> = x_95.unity_MatrixVP[1i];
  let x_239 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_237.x, x_237.y, x_237.w));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = x_95.unity_MatrixVP[0i];
  let x_245 : vec4<f32> = u_xlat2;
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.w) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : vec4<f32> = x_95.unity_MatrixVP[2i];
  let x_256 : vec4<f32> = u_xlat2;
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.w) * vec3<f32>(x_256.z, x_256.z, x_256.z)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_267 : vec4<f32> = u_xlat2;
  let x_270 : vec4<f32> = u_xlat2;
  let x_272 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.w) * vec3<f32>(x_267.w, x_267.w, x_267.w)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_276;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_282 : f32 = x_95.x_ProjectionParams.x;
  u_xlat3.y = x_282;
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : vec4<f32> = u_xlat3;
  let x_295 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.w) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec4<f32> = u_xlat1;
  let x_300 : vec2<f32> = vec2<f32>(x_299.z, x_299.w);
  let x_301 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_301.x, x_301.y, x_300.x, x_300.y);
  let x_304 : f32 = u_xlat2.y;
  u_xlat2.w = (x_304 * 0.5f);
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat2;
  let x_311 : vec2<f32> = (vec2<f32>(x_307.z, x_307.z) + vec2<f32>(x_309.x, x_309.w));
  let x_312 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_311.x, x_311.y, x_312.z, x_312.w);
  let x_315 : f32 = u_xlat5.y;
  let x_317 : f32 = u_xlat5.y;
  u_xlat1.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat5.x;
  let x_323 : f32 = u_xlat5.x;
  let x_326 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_321 * x_323) + -(x_326));
  let x_330 : vec3<f32> = u_xlat5;
  let x_332 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec4<f32>(x_330.y, x_330.z, x_330.z, x_330.x) * vec4<f32>(x_332.x, x_332.y, x_332.z, x_332.z));
  let x_341 : i32 = u_xlati0;
  let x_344 : vec4<f32> = x_340.unity_Builtins2Array[(x_341 / 7i)].unity_SHBrArray;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_344, x_345);
  let x_348 : i32 = u_xlati0;
  let x_352 : vec4<f32> = x_340.unity_Builtins2Array[(x_348 / 7i)].unity_SHBgArray;
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_352, x_353);
  let x_356 : i32 = u_xlati0;
  let x_360 : vec4<f32> = x_340.unity_Builtins2Array[(x_356 / 7i)].unity_SHBbArray;
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_360, x_361);
  let x_365 : i32 = u_xlati0;
  let x_369 : vec4<f32> = x_340.unity_Builtins2Array[(x_365 / 7i)].unity_SHCArray;
  let x_371 : vec4<f32> = u_xlat1;
  let x_374 : vec3<f32> = u_xlat4;
  vs_TEXCOORD4 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.x, x_371.x)) + x_374);
  let x_377 : f32 = u_xlat3.y;
  u_xlat3.w = (x_377 * 0.5f);
  let x_380 : vec4<f32> = u_xlat3;
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec2<f32> = (vec2<f32>(x_380.z, x_380.z) + vec2<f32>(x_382.x, x_382.w));
  let x_385 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_389 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_389);
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
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6) @interpolate(flat)
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4, vs_SV_InstanceID0);
}

