struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat2;
  gl_Position = x_80;
  let x_86 : vec4<f32> = in_TEXCOORD0;
  let x_90 : vec4<f32> = x_17.x_MainTex_ST;
  let x_94 : vec4<f32> = x_17.x_MainTex_ST;
  let x_96 : vec2<f32> = ((vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_90.x, x_90.y)) + vec2<f32>(x_94.z, x_94.w));
  let x_97 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_17.x_Normal_ST;
  let x_107 : vec4<f32> = x_17.x_Normal_ST;
  let x_109 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_110 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_110.x, x_110.y, x_109.x, x_109.y);
  let x_116 : vec3<f32> = in_NORMAL0;
  let x_118 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_116, vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_125 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_123, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_130 : vec3<f32> = in_NORMAL0;
  let x_132 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_130, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec4<f32> = u_xlat3;
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_143);
  let x_145 : f32 = u_xlat21;
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec3<f32> = (vec3<f32>(x_145, x_145, x_145) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat4 = (vec3<f32>(x_155.y, x_155.y, x_155.y) * vec3<f32>(x_158.y, x_158.z, x_158.x));
  let x_162 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_164 : vec4<f32> = in_TANGENT0;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_162.y, x_162.z, x_162.x) * vec3<f32>(x_164.x, x_164.x, x_164.x)) + x_167);
  let x_170 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_172 : vec4<f32> = in_TANGENT0;
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_170.y, x_170.z, x_170.x) * vec3<f32>(x_172.z, x_172.z, x_172.z)) + x_175);
  let x_177 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat4;
  u_xlat21 = dot(x_177, x_178);
  let x_180 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat21;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_189);
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = u_xlat4;
  let x_196 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_191.z, x_191.x, x_191.y) * vec3<f32>(x_193.y, x_193.z, x_193.x)) + -(x_196));
  let x_202 : f32 = in_TANGENT0.w;
  let x_205 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat21 = (x_202 * x_205);
  let x_207 : f32 = u_xlat21;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_207, x_207, x_207) * x_209);
  let x_214 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_214;
  let x_218 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_218;
  let x_221 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_221;
  let x_225 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_225;
  let x_229 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_229;
  let x_232 : f32 = u_xlat3.z;
  vs_TEXCOORD2.z = x_232;
  let x_235 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = x_235;
  let x_238 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_238;
  let x_241 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_241;
  let x_245 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_247 : vec4<f32> = in_POSITION0;
  let x_250 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.w, x_247.w, x_247.w)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_255 : vec4<f32> = in_POSITION0;
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_254 * vec4<f32>(x_255.w, x_255.w, x_255.w, x_255.w)) + x_258);
  let x_262 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_262;
  let x_264 : f32 = u_xlat1.y;
  let x_267 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat3.x = (x_264 * x_267);
  let x_271 : f32 = x_17.unity_MatrixV[0i].z;
  let x_273 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_271 * x_273) + x_276);
  let x_280 : f32 = x_17.unity_MatrixV[2i].z;
  let x_282 : f32 = u_xlat1.z;
  let x_285 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_280 * x_282) + x_285);
  let x_289 : f32 = x_17.unity_MatrixV[3i].z;
  let x_291 : f32 = u_xlat1.w;
  let x_294 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_289 * x_291) + x_294);
  let x_300 : f32 = u_xlat3.x;
  vs_TEXCOORD5.z = -(x_300);
  let x_304 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.w));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.w) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.w) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_337 : vec4<f32> = u_xlat1;
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.w) * vec3<f32>(x_337.w, x_337.w, x_337.w)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : f32 = u_xlat1.z;
  vs_TEXCOORD5.w = x_346;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_352 : f32 = x_17.x_ProjectionParams.x;
  u_xlat3.y = x_352;
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat3;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat1.y;
  u_xlat1.w = (x_369 * 0.5f);
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = (vec2<f32>(x_372.z, x_372.z) + vec2<f32>(x_374.x, x_374.w));
  let x_377 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_385 : vec2<f32> = (vec2<f32>(x_379.y, x_379.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_389 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat1;
  let x_396 : vec2<f32> = ((vec2<f32>(x_389.x, x_389.y) * vec2<f32>(x_391.x, x_391.x)) + vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
  let x_400 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_402 : vec4<f32> = u_xlat0;
  let x_405 : vec4<f32> = u_xlat0;
  let x_407 : vec2<f32> = ((vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_402.z, x_402.z)) + vec2<f32>(x_405.x, x_405.y));
  let x_408 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
  let x_413 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_413.x, x_413.y) * vec2<f32>(x_415.w, x_415.w)) + vec2<f32>(x_418.x, x_418.y));
  let x_423 : f32 = u_xlat2.z;
  vs_TEXCOORD8 = x_423;
  let x_425 : vec4<f32> = u_xlat2;
  let x_426 : vec2<f32> = vec2<f32>(x_425.z, x_425.w);
  let x_427 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_427.x, x_427.y, x_426.x, x_426.y);
  let x_430 : f32 = u_xlat3.y;
  u_xlat3.w = (x_430 * 0.5f);
  let x_433 : vec4<f32> = u_xlat3;
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec2<f32> = (vec2<f32>(x_433.z, x_433.z) + vec2<f32>(x_435.x, x_435.w));
  let x_438 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_COLOR0_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD8_1 : f32,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD8, vs_TEXCOORD7);
}

