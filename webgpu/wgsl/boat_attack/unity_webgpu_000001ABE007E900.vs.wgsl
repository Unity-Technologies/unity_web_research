struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_FaceDilate : f32,
  @size(12)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  x_Sharpness : f32,
  @size(8)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> vs_TEXCOORD9 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlati5 : i32;
  var u_xlati0 : i32;
  var u_xlatb15 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_30.z, x_30.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_39);
  let x_43 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
  let x_50 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.z, x_51.z, x_51.z, x_51.z)) + x_54);
  let x_57 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_57 + x_60);
  let x_63 : vec4<f32> = u_xlat2;
  let x_67 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat2;
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_96 : vec4<f32> = u_xlat3;
  gl_Position = x_96;
  let x_104 : f32 = u_xlat3.z;
  vs_TEXCOORD9 = x_104;
  let x_110 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_110 * 0.000244140625f);
  let x_113 : f32 = u_xlat15;
  u_xlat3.x = floor(x_113);
  let x_117 : f32 = u_xlat3.x;
  let x_122 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_117) * 4096.0f) + x_122);
  let x_125 : vec4<f32> = u_xlat3;
  let x_129 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_133 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_141 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_143 : vec2<f32> = ((vec2<f32>(x_133.x, x_133.y) * vec2<f32>(x_137.x, x_137.y)) + vec2<f32>(x_141.z, x_141.w));
  let x_144 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_144.x, x_144.y, x_143.x, x_143.y);
  let x_148 : vec4<f32> = u_xlat3;
  let x_152 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_156 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(x_156.z, x_156.w));
  let x_160 : vec4<f32> = in_TEXCOORD0;
  let x_164 : vec4<f32> = x_19.x_MainTex_ST;
  let x_168 : vec4<f32> = x_19.x_MainTex_ST;
  let x_170 : vec2<f32> = ((vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164.x, x_164.y)) + vec2<f32>(x_168.z, x_168.w));
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_174 : f32 = u_xlat2.y;
  let x_177 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_174 * x_177);
  let x_180 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_182 : f32 = u_xlat2.x;
  let x_184 : f32 = u_xlat15;
  u_xlat15 = ((x_180 * x_182) + x_184);
  let x_187 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_189 : f32 = u_xlat2.z;
  let x_191 : f32 = u_xlat15;
  u_xlat15 = ((x_187 * x_189) + x_191);
  let x_194 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_196 : f32 = u_xlat2.w;
  let x_198 : f32 = u_xlat15;
  u_xlat15 = ((x_194 * x_196) + x_198);
  let x_201 : vec4<f32> = x_19.x_ScreenParams;
  let x_205 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_207 : vec2<f32> = (vec2<f32>(x_201.y, x_201.y) * vec2<f32>(x_205.x, x_205.y));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_208.z, x_208.w);
  let x_211 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_214 : vec4<f32> = x_19.x_ScreenParams;
  let x_217 : vec4<f32> = u_xlat2;
  let x_219 : vec2<f32> = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_214.x, x_214.x)) + vec2<f32>(x_217.x, x_217.y));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat2;
  let x_226 : f32 = x_19.x_ScaleX;
  let x_229 : f32 = x_19.x_ScaleY;
  let x_231 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(x_226, x_229));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_234 : f32 = u_xlat15;
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec2<f32> = (vec2<f32>(x_234, x_234) / vec2<f32>(x_236.x, x_236.y));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_241.x, x_241.y), vec2<f32>(x_243.x, x_243.y));
  let x_246 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_246);
  let x_249 : f32 = in_TEXCOORD1.y;
  let x_253 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_249) * x_253);
  let x_259 : f32 = x_19.x_Sharpness;
  u_xlat7 = (x_259 + 1.0f);
  let x_262 : f32 = u_xlat7;
  let x_264 : f32 = u_xlat2.x;
  u_xlat2.x = (x_262 * x_264);
  let x_267 : f32 = u_xlat15;
  let x_269 : f32 = u_xlat2.x;
  u_xlat7 = (x_267 * x_269);
  let x_274 : f32 = x_19.x_PerspectiveFilter;
  u_xlat12 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat12;
  let x_278 : f32 = u_xlat7;
  u_xlat7 = (x_277 * x_278);
  let x_280 : f32 = u_xlat15;
  let x_282 : f32 = u_xlat2.x;
  let x_284 : f32 = u_xlat7;
  u_xlat15 = ((x_280 * x_282) + -(x_284));
  let x_289 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_292 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_294 : vec3<f32> = (vec3<f32>(x_289.y, x_289.y, x_289.y) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_295.y, x_294.y, x_294.z);
  let x_298 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_301 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_304 : vec4<f32> = u_xlat2;
  let x_306 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_301.x, x_301.x, x_301.x)) + vec3<f32>(x_304.x, x_304.z, x_304.w));
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_307.y, x_306.y, x_306.z);
  let x_310 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_313 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_313.z, x_313.z, x_313.z)) + vec3<f32>(x_316.x, x_316.z, x_316.w));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_319.y, x_318.y, x_318.z);
  let x_321 : vec4<f32> = u_xlat2;
  let x_324 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.z, x_321.w) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_326.z);
  let x_330 : f32 = in_POSITION0.z;
  u_xlat0.z = x_330;
  let x_332 : vec4<f32> = u_xlat0;
  let x_335 : vec4<f32> = u_xlat2;
  let x_337 : vec3<f32> = (-(vec3<f32>(x_332.x, x_332.y, x_332.z)) + vec3<f32>(x_335.x, x_335.z, x_335.w));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_342 : vec3<f32> = in_NORMAL0;
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_342, vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_351 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_351)));
  let x_359 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_359 < 0.0f)));
  let x_363 : i32 = u_xlati5;
  let x_365 : i32 = u_xlati0;
  u_xlati0 = (-(x_363) + x_365);
  let x_367 : i32 = u_xlati0;
  u_xlat0.x = f32(x_367);
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = in_NORMAL0;
  let x_373 : vec3<f32> = (vec3<f32>(x_370.x, x_370.x, x_370.x) * x_372);
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_383 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_390 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_404 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_404);
  let x_407 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.x, x_407.x) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_415 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_417 : vec4<f32> = in_POSITION0;
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.w, x_417.w, x_417.w)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_422.x, x_423.y, x_422.y, x_422.z);
  let x_426 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_427 : vec4<f32> = in_POSITION0;
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_426 * vec4<f32>(x_427.w, x_427.w, x_427.w, x_427.w)) + x_430);
  let x_432 : vec4<f32> = u_xlat2;
  let x_436 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_437 : vec3<f32> = (-(vec3<f32>(x_432.x, x_432.z, x_432.w)) + x_436);
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_442 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_442.x, x_442.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat3;
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_451);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat3;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.x, x_454.x) * vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_459.y, x_458.y, x_458.z);
  let x_461 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_461.y, x_461.z, x_461.x), vec3<f32>(x_463.x, x_463.z, x_463.w));
  let x_469 : f32 = u_xlat2.x;
  let x_471 : f32 = u_xlat15;
  let x_473 : f32 = u_xlat7;
  vs_TEXCOORD6.y = ((abs(x_469) * x_471) + x_473);
  let x_479 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_479);
  let x_481 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_481);
  let x_485 : f32 = x_19.x_WeightNormal;
  let x_489 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_485) + x_489);
  let x_492 : f32 = u_xlat15;
  let x_494 : f32 = u_xlat2.x;
  let x_497 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_492 * x_494) + x_497);
  let x_499 : f32 = u_xlat15;
  let x_504 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_499 * 0.25f) + x_504);
  let x_506 : f32 = u_xlat15;
  let x_509 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_506 * x_509);
  let x_511 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_511 * 0.5f);
  let x_517 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_517;
  let x_520 : vec4<f32> = in_TANGENT0;
  let x_523 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_525 : vec3<f32> = (vec3<f32>(x_520.y, x_520.y, x_520.y) * vec3<f32>(x_523.y, x_523.z, x_523.x));
  let x_526 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_529 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_531 : vec4<f32> = in_TANGENT0;
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.y, x_529.z, x_529.x) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_540 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_542 : vec4<f32> = in_TANGENT0;
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.y, x_540.z, x_540.x) * vec3<f32>(x_542.z, x_542.z, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat2;
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_555);
  let x_557 : f32 = u_xlat15;
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : vec3<f32> = (vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_566 : vec4<f32> = u_xlat0;
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat0;
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_571.z, x_571.x, x_571.y) * vec3<f32>(x_573.y, x_573.z, x_573.x)) + -(x_576));
  let x_581 : f32 = in_TANGENT0.w;
  let x_584 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_581 * x_584);
  let x_586 : f32 = u_xlat5;
  let x_588 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_591 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_591;
  let x_594 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_594;
  let x_598 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_598;
  let x_602 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_602;
  let x_605 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_605;
  let x_608 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_608;
  let x_611 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_611;
  let x_614 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_614;
  let x_618 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_618;
  let x_619 : vec4<f32> = u_xlat3;
  let x_623 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_625 : vec3<f32> = (vec3<f32>(x_619.y, x_619.y, x_619.y) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_629 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_631 : vec4<f32> = u_xlat3;
  let x_634 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631.x, x_631.x, x_631.x)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_642 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_644 : vec4<f32> = u_xlat3;
  let x_647 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_644.z, x_644.z, x_644.z)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat1;
  let x_654 : vec4<f32> = x_19.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_650.y, x_650.y, x_650.y, x_650.y) * x_654);
  let x_657 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_658 : vec4<f32> = u_xlat1;
  let x_661 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_657 * vec4<f32>(x_658.x, x_658.x, x_658.x, x_658.x)) + x_661);
  let x_664 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_665 : vec4<f32> = u_xlat1;
  let x_668 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_664 * vec4<f32>(x_665.z, x_665.z, x_665.z, x_665.z)) + x_668);
  let x_673 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_674 : vec4<f32> = u_xlat1;
  let x_677 : vec4<f32> = u_xlat0;
  vs_TEXCOORD8 = ((x_673 * vec4<f32>(x_674.w, x_674.w, x_674.w, x_674.w)) + x_677);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD9_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(7)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(8)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD9, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}

