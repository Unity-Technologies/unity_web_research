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
  x_ProjectionParams : vec4<f32>,
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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_222 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati7 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati7 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati7;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati7;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati7;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati7;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati7;
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
  let x_136 : vec4<f32> = in_TEXCOORD0;
  let x_139 : vec4<f32> = x_98.x_MainTex_ST;
  let x_143 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_136.x, x_136.y) * vec2<f32>(x_139.x, x_139.y)) + vec2<f32>(x_143.z, x_143.w));
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_149 : i32 = u_xlati7;
  let x_152 : vec4<f32> = x_42.unity_Builtins0Array[(x_149 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_148, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_159 : i32 = u_xlati7;
  let x_162 : vec4<f32> = x_42.unity_Builtins0Array[(x_159 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_158, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_167 : i32 = u_xlati7;
  let x_170 : vec4<f32> = x_42.unity_Builtins0Array[(x_167 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_166, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_177 : vec4<f32> = u_xlat3;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_184);
  let x_187 : vec3<f32> = u_xlat7;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : vec3<f32> = u_xlat7;
  vs_TEXCOORD1 = x_194;
  let x_196 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec3<f32>(x_196.x, x_196.y, x_196.z);
  let x_200 : f32 = u_xlat7.y;
  let x_202 : f32 = u_xlat7.y;
  u_xlat22 = (x_200 * x_202);
  let x_205 : f32 = u_xlat7.x;
  let x_207 : f32 = u_xlat7.x;
  let x_209 : f32 = u_xlat22;
  u_xlat22 = ((x_205 * x_207) + -(x_209));
  let x_212 : vec3<f32> = u_xlat7;
  let x_214 : vec3<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_212.y, x_212.z, x_212.z, x_212.x) * vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.z));
  let x_223 : i32 = u_xlati0;
  let x_226 : vec4<f32> = x_222.unity_Builtins2Array[(x_223 / 7i)].unity_SHBrArray;
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_226, x_227);
  let x_230 : i32 = u_xlati0;
  let x_234 : vec4<f32> = x_222.unity_Builtins2Array[(x_230 / 7i)].unity_SHBgArray;
  let x_235 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_234, x_235);
  let x_238 : i32 = u_xlati0;
  let x_242 : vec4<f32> = x_222.unity_Builtins2Array[(x_238 / 7i)].unity_SHBbArray;
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_242, x_243);
  let x_246 : i32 = u_xlati0;
  let x_249 : vec4<f32> = x_222.unity_Builtins2Array[(x_246 / 7i)].unity_SHCArray;
  let x_251 : f32 = u_xlat22;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251, x_251, x_251)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_259.y, x_259.y, x_259.y, x_259.y)) + x_263);
  let x_266 : vec3<f32> = u_xlat7;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_266.y, x_266.y, x_266.y, x_266.y) * x_268);
  let x_270 : vec4<f32> = u_xlat4;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_270 * x_271);
  let x_274 : vec4<f32> = u_xlat1;
  let x_278 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_274.x, x_274.x, x_274.x, x_274.x)) + x_278);
  let x_280 : vec4<f32> = u_xlat1;
  let x_284 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_280.z, x_280.z, x_280.z, x_280.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat6;
  let x_287 : vec3<f32> = u_xlat7;
  let x_290 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_286 * vec4<f32>(x_287.x, x_287.x, x_287.x, x_287.x)) + x_290);
  let x_293 : vec4<f32> = u_xlat1;
  let x_294 : vec3<f32> = u_xlat7;
  let x_297 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_293 * vec4<f32>(x_294.z, x_294.z, x_294.z, x_294.z)) + x_297);
  let x_299 : vec4<f32> = u_xlat6;
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_299 * x_300) + x_302);
  let x_304 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_304 * x_305) + x_307);
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_309, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat4 = inverseSqrt(x_313);
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_315 * x_317) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_322);
  let x_324 : vec4<f32> = u_xlat0;
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_324 * x_325);
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_327, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_331 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_331 * x_332);
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_339 : vec3<f32> = (vec3<f32>(x_334.y, x_334.y, x_334.y) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_345 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.z, x_356.z, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.w, x_367.w, x_367.w)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : f32 = u_xlat2.y;
  let x_385 : f32 = x_98.x_ProjectionParams.x;
  u_xlat0.x = (x_382 * x_385);
  let x_389 : f32 = u_xlat0.x;
  u_xlat0.w = (x_389 * 0.5f);
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : vec2<f32> = (vec2<f32>(x_394.x, x_394.w) * vec2<f32>(0.5f, 0.5f));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_398.y, x_397.y, x_398.w);
  let x_401 : vec4<f32> = u_xlat2;
  let x_402 : vec2<f32> = vec2<f32>(x_401.z, x_401.w);
  let x_403 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_403.x, x_403.y, x_402.x, x_402.y);
  let x_405 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = u_xlat0;
  let x_409 : vec2<f32> = (vec2<f32>(x_405.z, x_405.z) + vec2<f32>(x_407.x, x_407.w));
  let x_410 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_416 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_416);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5, vs_SV_InstanceID0);
}

