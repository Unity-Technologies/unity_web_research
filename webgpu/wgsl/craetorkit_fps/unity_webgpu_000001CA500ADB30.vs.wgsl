const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

@group(1) @binding(3) var<uniform> x_98 : VGlobals;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_226 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati6 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat0 : vec4<f32>;
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
  let x_118 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_119 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_118 * vec4<f32>(x_119.w, x_119.w, x_119.w, x_119.w)) + x_122);
  let x_129 : vec4<f32> = u_xlat2;
  gl_Position = x_129;
  let x_137 : f32 = u_xlat2.z;
  vs_TEXCOORD4 = x_137;
  let x_142 : vec4<f32> = in_TEXCOORD0;
  let x_146 : vec4<f32> = x_98.x_MainTex_ST;
  let x_150 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(x_150.z, x_150.w));
  let x_155 : vec3<f32> = in_NORMAL0;
  let x_156 : i32 = u_xlati6;
  let x_159 : vec4<f32> = x_42.unity_Builtins0Array[(x_156 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_155, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_164 : vec3<f32> = in_NORMAL0;
  let x_165 : i32 = u_xlati6;
  let x_168 : vec4<f32> = x_42.unity_Builtins0Array[(x_165 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_164, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_173 : i32 = u_xlati6;
  let x_176 : vec4<f32> = x_42.unity_Builtins0Array[(x_173 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_172, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_182 : vec4<f32> = u_xlat2;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_189 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_189);
  let x_192 : vec3<f32> = u_xlat6;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_192.x, x_192.x, x_192.x) * vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_199 : vec3<f32> = u_xlat6;
  vs_TEXCOORD1 = x_199;
  let x_201 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec3<f32>(x_201.x, x_201.y, x_201.z);
  let x_205 : f32 = u_xlat6.y;
  let x_207 : f32 = u_xlat6.y;
  u_xlat19 = (x_205 * x_207);
  let x_210 : f32 = u_xlat6.x;
  let x_212 : f32 = u_xlat6.x;
  let x_214 : f32 = u_xlat19;
  u_xlat19 = ((x_210 * x_212) + -(x_214));
  let x_217 : vec3<f32> = u_xlat6;
  let x_219 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec4<f32>(x_217.y, x_217.z, x_217.z, x_217.x) * vec4<f32>(x_219.x, x_219.y, x_219.z, x_219.z));
  let x_227 : i32 = u_xlati0;
  let x_230 : vec4<f32> = x_226.unity_Builtins2Array[(x_227 / 7i)].unity_SHBrArray;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_230, x_231);
  let x_234 : i32 = u_xlati0;
  let x_238 : vec4<f32> = x_226.unity_Builtins2Array[(x_234 / 7i)].unity_SHBgArray;
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_238, x_239);
  let x_242 : i32 = u_xlati0;
  let x_245 : vec4<f32> = x_226.unity_Builtins2Array[(x_242 / 7i)].unity_SHBbArray;
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_245, x_246);
  let x_249 : i32 = u_xlati0;
  let x_252 : vec4<f32> = x_226.unity_Builtins2Array[(x_249 / 7i)].unity_SHCArray;
  let x_254 : f32 = u_xlat19;
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254, x_254, x_254)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_262.y, x_262.y, x_262.y, x_262.y)) + x_266);
  let x_269 : vec3<f32> = u_xlat6;
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_269.y, x_269.y, x_269.y, x_269.y) * x_271);
  let x_273 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_273 * x_274);
  let x_277 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_277.x, x_277.x, x_277.x, x_277.x)) + x_281);
  let x_283 : vec4<f32> = u_xlat1;
  let x_287 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_283.z, x_283.z, x_283.z, x_283.z)) + x_287);
  let x_289 : vec4<f32> = u_xlat5;
  let x_290 : vec3<f32> = u_xlat6;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_289 * vec4<f32>(x_290.x, x_290.x, x_290.x, x_290.x)) + x_293);
  let x_296 : vec4<f32> = u_xlat1;
  let x_297 : vec3<f32> = u_xlat6;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_296 * vec4<f32>(x_297.z, x_297.z, x_297.z, x_297.z)) + x_300);
  let x_302 : vec4<f32> = u_xlat5;
  let x_303 : vec4<f32> = u_xlat5;
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_302 * x_303) + x_305);
  let x_307 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_307 * x_308) + x_310);
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_312, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_316);
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_318 * x_320) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_325);
  let x_327 : vec4<f32> = u_xlat0;
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_327 * x_328);
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_330, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_334 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_334 * x_335);
  let x_337 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_342 : vec3<f32> = (vec3<f32>(x_337.y, x_337.y, x_337.y) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.x, x_348.x, x_348.x)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.z, x_359.z, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_370 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.w, x_370.w, x_370.w)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_379.x, x_379.y, x_379.z) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_389 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_389);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_SV_InstanceID0);
}

