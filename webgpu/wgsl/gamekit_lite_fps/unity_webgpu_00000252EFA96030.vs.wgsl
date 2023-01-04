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

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
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

type Arr_2 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_2,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlati6 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(11) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_98 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat19 : f32;

@group(0) @binding(2) var<uniform> x_224 : UnityInstancing_PerDraw2;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  u_xlati6 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati6;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati6;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati6;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati6;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati6;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_101);
  let x_104 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_104 * vec4<f32>(x_105.x, x_105.x, x_105.x, x_105.x)) + x_108);
  let x_111 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_111 * vec4<f32>(x_112.z, x_112.z, x_112.z, x_112.z)) + x_115);
  let x_123 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_124 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat3;
  gl_Position = ((x_123 * vec4<f32>(x_124.w, x_124.w, x_124.w, x_124.w)) + x_127);
  let x_133 : vec3<f32> = in_NORMAL0;
  let x_134 : i32 = u_xlati6;
  let x_137 : vec4<f32> = x_42.unity_Builtins0Array[(x_134 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_133, vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_143 : vec3<f32> = in_NORMAL0;
  let x_144 : i32 = u_xlati6;
  let x_147 : vec4<f32> = x_42.unity_Builtins0Array[(x_144 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_143, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_151 : vec3<f32> = in_NORMAL0;
  let x_152 : i32 = u_xlati6;
  let x_155 : vec4<f32> = x_42.unity_Builtins0Array[(x_152 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_151, vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_169 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_169);
  let x_172 : vec3<f32> = u_xlat6;
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_172.x, x_172.x, x_172.x) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_179 : vec3<f32> = u_xlat6;
  vs_TEXCOORD0 = x_179;
  let x_181 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_181.x, x_181.y, x_181.z);
  let x_185 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_185;
  let x_191 : vec2<f32> = in_TEXCOORD0;
  let x_194 : vec4<f32> = x_98.x_MainTex_ST;
  let x_198 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_191 * vec2<f32>(x_194.x, x_194.y)) + vec2<f32>(x_198.z, x_198.w));
  let x_203 : f32 = u_xlat6.y;
  let x_205 : f32 = u_xlat6.y;
  u_xlat19 = (x_203 * x_205);
  let x_208 : f32 = u_xlat6.x;
  let x_210 : f32 = u_xlat6.x;
  let x_212 : f32 = u_xlat19;
  u_xlat19 = ((x_208 * x_210) + -(x_212));
  let x_215 : vec3<f32> = u_xlat6;
  let x_217 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec4<f32>(x_215.y, x_215.z, x_215.z, x_215.x) * vec4<f32>(x_217.x, x_217.y, x_217.z, x_217.z));
  let x_225 : i32 = u_xlati0;
  let x_228 : vec4<f32> = x_224.unity_Builtins2Array[(x_225 / 7i)].unity_SHBrArray;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_228, x_229);
  let x_232 : i32 = u_xlati0;
  let x_236 : vec4<f32> = x_224.unity_Builtins2Array[(x_232 / 7i)].unity_SHBgArray;
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_236, x_237);
  let x_240 : i32 = u_xlati0;
  let x_243 : vec4<f32> = x_224.unity_Builtins2Array[(x_240 / 7i)].unity_SHBbArray;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_243, x_244);
  let x_247 : i32 = u_xlati0;
  let x_250 : vec4<f32> = x_224.unity_Builtins2Array[(x_247 / 7i)].unity_SHCArray;
  let x_252 : f32 = u_xlat19;
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252, x_252, x_252)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat1;
  let x_264 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_260.y, x_260.y, x_260.y, x_260.y)) + x_264);
  let x_267 : vec3<f32> = u_xlat6;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_267.y, x_267.y, x_267.y, x_267.y) * x_269);
  let x_271 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_271 * x_272);
  let x_275 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_275.x, x_275.x, x_275.x, x_275.x)) + x_279);
  let x_281 : vec4<f32> = u_xlat1;
  let x_285 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_281.z, x_281.z, x_281.z, x_281.z)) + x_285);
  let x_287 : vec4<f32> = u_xlat5;
  let x_288 : vec3<f32> = u_xlat6;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_287 * vec4<f32>(x_288.x, x_288.x, x_288.x, x_288.x)) + x_291);
  let x_294 : vec4<f32> = u_xlat1;
  let x_295 : vec3<f32> = u_xlat6;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_294 * vec4<f32>(x_295.z, x_295.z, x_295.z, x_295.z)) + x_298);
  let x_300 : vec4<f32> = u_xlat5;
  let x_301 : vec4<f32> = u_xlat5;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_300 * x_301) + x_303);
  let x_305 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_305 * x_306) + x_308);
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_310, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_314);
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_316 * x_318) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_323);
  let x_325 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_325 * x_326);
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_328, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_332 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_332 * x_333);
  let x_335 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_340 : vec3<f32> = (vec3<f32>(x_335.y, x_335.y, x_335.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_346 : vec4<f32> = u_xlat0;
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.x, x_346.x)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.z, x_357.z, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_368 : vec4<f32> = u_xlat0;
  let x_371 : vec4<f32> = u_xlat0;
  let x_373 : vec3<f32> = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(x_368.w, x_368.w, x_368.w)) + vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_385 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_385);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_SV_InstanceID0);
}

