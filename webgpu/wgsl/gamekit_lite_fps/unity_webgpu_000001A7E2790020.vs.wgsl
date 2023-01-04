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
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(10) var<uniform> x_91 : VGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  vs_TEXCOORD1 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  let x_94 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_94);
  let x_97 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_97 * vec4<f32>(x_98.x, x_98.x, x_98.x, x_98.x)) + x_101);
  let x_104 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_104 * vec4<f32>(x_105.z, x_105.z, x_105.z, x_105.z)) + x_108);
  let x_111 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_111 * vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w)) + x_115);
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = x_122;
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_129 : i32 = u_xlati0;
  let x_132 : vec4<f32> = x_38.unity_Builtins0Array[(x_129 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_128, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_139 : i32 = u_xlati0;
  let x_142 : vec4<f32> = x_38.unity_Builtins0Array[(x_139 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_138, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = in_NORMAL0;
  let x_147 : i32 = u_xlati0;
  let x_150 : vec4<f32> = x_38.unity_Builtins0Array[(x_147 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_146, vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_157 : vec4<f32> = u_xlat3;
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_164 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_164);
  let x_167 : vec3<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_167.x, x_167.x, x_167.x) * vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_173 : vec3<f32> = u_xlat0;
  vs_TEXCOORD0 = x_173;
  let x_176 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_176;
  let x_182 : vec2<f32> = in_TEXCOORD0;
  let x_185 : vec4<f32> = x_91.x_MainTex_ST;
  let x_189 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_182 * vec2<f32>(x_185.x, x_185.y)) + vec2<f32>(x_189.z, x_189.w));
  let x_194 : f32 = u_xlat2.y;
  let x_198 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat12 = (x_194 * x_198);
  let x_201 : f32 = x_91.unity_MatrixV[0i].z;
  let x_203 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat12;
  u_xlat12 = ((x_201 * x_203) + x_205);
  let x_208 : f32 = x_91.unity_MatrixV[2i].z;
  let x_210 : f32 = u_xlat2.z;
  let x_212 : f32 = u_xlat12;
  u_xlat12 = ((x_208 * x_210) + x_212);
  let x_215 : f32 = x_91.unity_MatrixV[3i].z;
  let x_218 : f32 = u_xlat2.w;
  let x_220 : f32 = u_xlat12;
  u_xlat12 = ((x_215 * x_218) + x_220);
  let x_223 : f32 = u_xlat12;
  vs_TEXCOORD3.z = -(x_223);
  let x_226 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = x_91.unity_MatrixVP[1i];
  let x_231 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_237 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.w) * vec3<f32>(x_237.x, x_237.x, x_237.x)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_248 : vec4<f32> = u_xlat2;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.w) * vec3<f32>(x_248.z, x_248.z, x_248.z)) + vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.w) * vec3<f32>(x_259.w, x_259.w, x_259.w)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_268;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_274 : f32 = x_91.x_ProjectionParams.x;
  u_xlat3.y = x_274;
  let x_276 : vec4<f32> = u_xlat2;
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat1;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.w) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : vec4<f32> = u_xlat1;
  let x_292 : vec2<f32> = vec2<f32>(x_291.z, x_291.w);
  let x_293 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_293.x, x_293.y, x_292.x, x_292.y);
  let x_296 : f32 = u_xlat2.y;
  u_xlat2.w = (x_296 * 0.5f);
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec2<f32> = (vec2<f32>(x_299.z, x_299.z) + vec2<f32>(x_301.x, x_301.w));
  let x_304 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_307 : f32 = u_xlat0.y;
  let x_309 : f32 = u_xlat0.y;
  u_xlat12 = (x_307 * x_309);
  let x_312 : f32 = u_xlat0.x;
  let x_314 : f32 = u_xlat0.x;
  let x_316 : f32 = u_xlat12;
  u_xlat12 = ((x_312 * x_314) + -(x_316));
  let x_319 : vec3<f32> = u_xlat0;
  let x_321 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_319.y, x_319.z, x_319.z, x_319.x) * vec4<f32>(x_321.x, x_321.y, x_321.z, x_321.z));
  let x_325 : vec4<f32> = x_91.unity_SHBr;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_325, x_326);
  let x_330 : vec4<f32> = x_91.unity_SHBg;
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_330, x_331);
  let x_335 : vec4<f32> = x_91.unity_SHBb;
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_335, x_336);
  let x_342 : vec4<f32> = x_91.unity_SHC;
  let x_344 : f32 = u_xlat12;
  let x_347 : vec3<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344, x_344, x_344)) + x_347);
  let x_350 : f32 = u_xlat3.y;
  u_xlat3.w = (x_350 * 0.5f);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec2<f32> = (vec2<f32>(x_353.z, x_353.z) + vec2<f32>(x_355.x, x_355.w));
  let x_358 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_362 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_362);
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
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

