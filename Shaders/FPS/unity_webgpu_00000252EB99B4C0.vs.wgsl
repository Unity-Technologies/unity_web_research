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
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(11) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(10) var<uniform> x_93 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat18 : f32;

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
  let x_20 : i32 = u_xlati0;
  u_xlati0 = (x_20 << bitcast<u32>(3i));
  let x_29 : vec4<f32> = in_POSITION0;
  let x_39 : i32 = u_xlati0;
  let x_45 : vec4<f32> = x_38.unity_Builtins0Array[(x_39 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * x_45);
  let x_47 : i32 = u_xlati0;
  let x_50 : vec4<f32> = x_38.unity_Builtins0Array[(x_47 / 8i)].unity_ObjectToWorldArray[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_56 : i32 = u_xlati0;
  let x_60 : vec4<f32> = x_38.unity_Builtins0Array[(x_56 / 8i)].unity_ObjectToWorldArray[2i];
  let x_61 : vec4<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = u_xlat1;
  let x_68 : i32 = u_xlati0;
  let x_71 : vec4<f32> = x_38.unity_Builtins0Array[(x_68 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_67 + x_71);
  let x_76 : i32 = u_xlati0;
  let x_79 : vec4<f32> = x_38.unity_Builtins0Array[(x_76 / 8i)].unity_ObjectToWorldArray[3i];
  let x_81 : vec4<f32> = in_POSITION0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = x_93.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_96);
  let x_99 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_100 : vec4<f32> = u_xlat2;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_99 * vec4<f32>(x_100.x, x_100.x, x_100.x, x_100.x)) + x_103);
  let x_106 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_106 * vec4<f32>(x_107.z, x_107.z, x_107.z, x_107.z)) + x_110);
  let x_113 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_114 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_113 * vec4<f32>(x_114.w, x_114.w, x_114.w, x_114.w)) + x_117);
  let x_124 : vec4<f32> = u_xlat1;
  gl_Position = x_124;
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_130 : i32 = u_xlati0;
  let x_133 : vec4<f32> = x_38.unity_Builtins0Array[(x_130 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_129, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_140 : i32 = u_xlati0;
  let x_143 : vec4<f32> = x_38.unity_Builtins0Array[(x_140 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_139, vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_147 : vec3<f32> = in_NORMAL0;
  let x_148 : i32 = u_xlati0;
  let x_151 : vec4<f32> = x_38.unity_Builtins0Array[(x_148 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_147, vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_164 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_164);
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat2;
  let x_171 : vec3<f32> = (vec3<f32>(x_167.x, x_167.x, x_167.x) * vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_176 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_176.x, x_176.y, x_176.z);
  let x_179 : vec3<f32> = u_xlat6;
  vs_TEXCOORD1 = x_179;
  let x_182 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_182;
  let x_188 : vec2<f32> = in_TEXCOORD0;
  let x_191 : vec4<f32> = x_93.x_MainTex_ST;
  let x_195 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_188 * vec2<f32>(x_191.x, x_191.y)) + vec2<f32>(x_195.z, x_195.w));
  let x_199 : vec3<f32> = u_xlat6;
  let x_203 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_199.x, x_199.x, x_199.x, x_199.x)) + x_203);
  let x_206 : vec3<f32> = u_xlat6;
  let x_210 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_206.y, x_206.y, x_206.y, x_206.y)) + x_210);
  let x_212 : vec3<f32> = u_xlat6;
  let x_216 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_212.z, x_212.z, x_212.z, x_212.z)) + x_216);
  let x_219 : vec4<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_219.y, x_219.y, x_219.y, x_219.y) * x_221);
  let x_223 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_223 * x_224);
  let x_226 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_226 * x_227) + x_229);
  let x_231 : vec4<f32> = u_xlat3;
  let x_232 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat2;
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_237 * vec4<f32>(x_238.z, x_238.z, x_238.z, x_238.z)) + x_241);
  let x_243 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_243 * x_244) + x_246);
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_248, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_252);
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_254 * x_257) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_262);
  let x_264 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_264 * x_265);
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_267, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_271 * x_272);
  let x_274 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_280 : vec3<f32> = (vec3<f32>(x_274.y, x_274.y, x_274.y) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_286 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat3;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.x, x_286.x, x_286.x)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_297 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.z, x_297.z, x_297.z)) + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_308 : vec4<f32> = u_xlat0;
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.w, x_308.w, x_308.w)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = u_xlat2.y;
  let x_320 : f32 = u_xlat2.y;
  u_xlat18 = (x_318 * x_320);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  let x_327 : f32 = u_xlat18;
  u_xlat18 = ((x_323 * x_325) + -(x_327));
  let x_330 : vec4<f32> = u_xlat2;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_330.y, x_330.z, x_330.z, x_330.x) * vec4<f32>(x_332.x, x_332.y, x_332.z, x_332.z));
  let x_337 : vec4<f32> = x_93.unity_SHBr;
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_337, x_338);
  let x_343 : vec4<f32> = x_93.unity_SHBg;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_343, x_344);
  let x_348 : vec4<f32> = x_93.unity_SHBb;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_93.unity_SHC;
  let x_356 : f32 = u_xlat18;
  let x_359 : vec4<f32> = u_xlat3;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356, x_356, x_356)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : f32 = u_xlat1.y;
  let x_374 : f32 = x_93.x_ProjectionParams.x;
  u_xlat0.x = (x_371 * x_374);
  let x_378 : f32 = u_xlat0.x;
  u_xlat0.w = (x_378 * 0.5f);
  let x_383 : vec4<f32> = u_xlat1;
  let x_386 : vec2<f32> = (vec2<f32>(x_383.x, x_383.w) * vec2<f32>(0.5f, 0.5f));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_387.w);
  let x_390 : vec4<f32> = u_xlat1;
  let x_391 : vec2<f32> = vec2<f32>(x_390.z, x_390.w);
  let x_392 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_392.x, x_392.y, x_391.x, x_391.y);
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : vec2<f32> = (vec2<f32>(x_394.z, x_394.z) + vec2<f32>(x_396.x, x_396.w));
  let x_399 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
  let x_403 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_403);
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
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

