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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_221 : UnityInstancing_PerDraw2;

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
  let x_123 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_124 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat3;
  gl_Position = ((x_123 * vec4<f32>(x_124.w, x_124.w, x_124.w, x_124.w)) + x_127);
  let x_135 : vec4<f32> = in_TEXCOORD0;
  let x_139 : vec4<f32> = x_98.x_MainTex_ST;
  let x_143 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_135.x, x_135.y) * vec2<f32>(x_139.x, x_139.y)) + vec2<f32>(x_143.z, x_143.w));
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_149 : i32 = u_xlati6;
  let x_152 : vec4<f32> = x_42.unity_Builtins0Array[(x_149 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_148, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_159 : i32 = u_xlati6;
  let x_162 : vec4<f32> = x_42.unity_Builtins0Array[(x_159 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_158, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_167 : i32 = u_xlati6;
  let x_170 : vec4<f32> = x_42.unity_Builtins0Array[(x_167 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_166, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_184);
  let x_187 : vec3<f32> = u_xlat6;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : vec3<f32> = u_xlat6;
  vs_TEXCOORD1 = x_194;
  let x_196 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec3<f32>(x_196.x, x_196.y, x_196.z);
  let x_200 : f32 = u_xlat6.y;
  let x_202 : f32 = u_xlat6.y;
  u_xlat19 = (x_200 * x_202);
  let x_205 : f32 = u_xlat6.x;
  let x_207 : f32 = u_xlat6.x;
  let x_209 : f32 = u_xlat19;
  u_xlat19 = ((x_205 * x_207) + -(x_209));
  let x_212 : vec3<f32> = u_xlat6;
  let x_214 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec4<f32>(x_212.y, x_212.z, x_212.z, x_212.x) * vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.z));
  let x_222 : i32 = u_xlati0;
  let x_225 : vec4<f32> = x_221.unity_Builtins2Array[(x_222 / 7i)].unity_SHBrArray;
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_225, x_226);
  let x_229 : i32 = u_xlati0;
  let x_233 : vec4<f32> = x_221.unity_Builtins2Array[(x_229 / 7i)].unity_SHBgArray;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_233, x_234);
  let x_237 : i32 = u_xlati0;
  let x_240 : vec4<f32> = x_221.unity_Builtins2Array[(x_237 / 7i)].unity_SHBbArray;
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_240, x_241);
  let x_244 : i32 = u_xlati0;
  let x_247 : vec4<f32> = x_221.unity_Builtins2Array[(x_244 / 7i)].unity_SHCArray;
  let x_249 : f32 = u_xlat19;
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249, x_249, x_249)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_257.y, x_257.y, x_257.y, x_257.y)) + x_261);
  let x_264 : vec3<f32> = u_xlat6;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_264.y, x_264.y, x_264.y, x_264.y) * x_266);
  let x_268 : vec4<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_268 * x_269);
  let x_272 : vec4<f32> = u_xlat1;
  let x_276 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x)) + x_276);
  let x_278 : vec4<f32> = u_xlat1;
  let x_282 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_278.z, x_278.z, x_278.z, x_278.z)) + x_282);
  let x_284 : vec4<f32> = u_xlat5;
  let x_285 : vec3<f32> = u_xlat6;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_284 * vec4<f32>(x_285.x, x_285.x, x_285.x, x_285.x)) + x_288);
  let x_291 : vec4<f32> = u_xlat1;
  let x_292 : vec3<f32> = u_xlat6;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_291 * vec4<f32>(x_292.z, x_292.z, x_292.z, x_292.z)) + x_295);
  let x_297 : vec4<f32> = u_xlat5;
  let x_298 : vec4<f32> = u_xlat5;
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_297 * x_298) + x_300);
  let x_302 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_302 * x_303) + x_305);
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_307, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_311);
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_313 * x_315) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_320);
  let x_322 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_322 * x_323);
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_325, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_329 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_329 * x_330);
  let x_332 : vec4<f32> = u_xlat0;
  let x_335 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_337 : vec3<f32> = (vec3<f32>(x_332.y, x_332.y, x_332.y) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_343 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.x, x_343.x, x_343.x)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_354 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.z, x_354.z, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_365 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.w, x_365.w, x_365.w)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(x_376.x, x_376.y, x_376.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_384 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_384);
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
  @location(4) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_SV_InstanceID0);
}

