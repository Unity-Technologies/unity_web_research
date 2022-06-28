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
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(9) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(8) var<uniform> x_93 : VGlobals;

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

var<private> u_xlat15 : f32;

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
  u_xlat5 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
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
  let x_118 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_119 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = ((x_118 * vec4<f32>(x_119.w, x_119.w, x_119.w, x_119.w)) + x_122);
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_129 : i32 = u_xlati0;
  let x_132 : vec4<f32> = x_38.unity_Builtins0Array[(x_129 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.x = dot(x_128, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_139 : i32 = u_xlati0;
  let x_142 : vec4<f32> = x_38.unity_Builtins0Array[(x_139 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.y = dot(x_138, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = in_NORMAL0;
  let x_147 : i32 = u_xlati0;
  let x_150 : vec4<f32> = x_38.unity_Builtins0Array[(x_147 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.z = dot(x_146, vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_163);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = (vec3<f32>(x_166.x, x_166.x, x_166.x) * vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_175 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_178 : vec3<f32> = u_xlat5;
  vs_TEXCOORD1 = x_178;
  let x_181 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_181;
  let x_187 : vec2<f32> = in_TEXCOORD0;
  let x_190 : vec4<f32> = x_93.x_MainTex_ST;
  let x_194 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_187 * vec2<f32>(x_190.x, x_190.y)) + vec2<f32>(x_194.z, x_194.w));
  let x_197 : vec3<f32> = u_xlat5;
  let x_201 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_197.x, x_197.x, x_197.x, x_197.x)) + x_201);
  let x_204 : vec3<f32> = u_xlat5;
  let x_208 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_204.y, x_204.y, x_204.y, x_204.y)) + x_208);
  let x_210 : vec3<f32> = u_xlat5;
  let x_214 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_210.z, x_210.z, x_210.z, x_210.z)) + x_214);
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_217.y, x_217.y, x_217.y, x_217.y) * x_219);
  let x_221 : vec4<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_221 * x_222);
  let x_224 : vec4<f32> = u_xlat2;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_224 * x_225) + x_227);
  let x_229 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_229 * vec4<f32>(x_230.x, x_230.x, x_230.x, x_230.x)) + x_233);
  let x_235 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_235 * vec4<f32>(x_236.z, x_236.z, x_236.z, x_236.z)) + x_239);
  let x_241 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_241 * x_242) + x_244);
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_246, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_250);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_252 * x_254) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_259);
  let x_261 : vec4<f32> = u_xlat2;
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_261 * x_262);
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_264, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_268 * x_269);
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_277 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_283 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_294 : vec4<f32> = u_xlat0;
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_305 : vec4<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.w, x_305.w, x_305.w)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_315 : f32 = u_xlat1.y;
  let x_317 : f32 = u_xlat1.y;
  u_xlat15 = (x_315 * x_317);
  let x_320 : f32 = u_xlat1.x;
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat15;
  u_xlat15 = ((x_320 * x_322) + -(x_324));
  let x_327 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_327.y, x_327.z, x_327.z, x_327.x) * vec4<f32>(x_329.x, x_329.y, x_329.z, x_329.z));
  let x_334 : vec4<f32> = x_93.unity_SHBr;
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_334, x_335);
  let x_340 : vec4<f32> = x_93.unity_SHBg;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_340, x_341);
  let x_346 : vec4<f32> = x_93.unity_SHBb;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_346, x_347);
  let x_351 : vec4<f32> = x_93.unity_SHC;
  let x_353 : f32 = u_xlat15;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_370 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_370);
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
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

