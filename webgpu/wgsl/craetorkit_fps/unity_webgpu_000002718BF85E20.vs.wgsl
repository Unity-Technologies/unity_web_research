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

var<private> vs_TEXCOORD8 : f32;

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

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_88 : f32 = u_xlat2.z;
  vs_TEXCOORD8 = x_88;
  let x_92 : vec4<f32> = in_TEXCOORD0;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  let x_102 : vec2<f32> = ((vec2<f32>(x_92.x, x_92.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(x_100.z, x_100.w));
  let x_103 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = in_TEXCOORD0;
  let x_109 : vec4<f32> = x_17.x_Normal_ST;
  let x_113 : vec4<f32> = x_17.x_Normal_ST;
  let x_115 : vec2<f32> = ((vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_109.x, x_109.y)) + vec2<f32>(x_113.z, x_113.w));
  let x_116 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_116.x, x_116.y, x_115.x, x_115.y);
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_127 : vec3<f32> = in_NORMAL0;
  let x_129 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_127, vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_133 : vec3<f32> = in_NORMAL0;
  let x_135 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_133, vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_141 : vec4<f32> = u_xlat2;
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_141.x, x_141.y, x_141.z), vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_146);
  let x_148 : f32 = u_xlat17;
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = (vec3<f32>(x_148, x_148, x_148) * vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_158 : vec4<f32> = in_TANGENT0;
  let x_161 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_161.y, x_161.z, x_161.x));
  let x_165 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_167 : vec4<f32> = in_TANGENT0;
  let x_170 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_165.y, x_165.z, x_165.x) * vec3<f32>(x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_175 : vec4<f32> = in_TANGENT0;
  let x_178 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_173.y, x_173.z, x_173.x) * vec3<f32>(x_175.z, x_175.z, x_175.z)) + x_178);
  let x_180 : vec3<f32> = u_xlat3;
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat17 = dot(x_180, x_181);
  let x_183 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_183);
  let x_185 : f32 = u_xlat17;
  let x_187 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_185, x_185, x_185) * x_187);
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_190.x, x_190.y, x_190.z) * x_192);
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec3<f32> = u_xlat3;
  let x_199 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_194.z, x_194.x, x_194.y) * vec3<f32>(x_196.y, x_196.z, x_196.x)) + -(x_199));
  let x_205 : f32 = in_TANGENT0.w;
  let x_208 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat17 = (x_205 * x_208);
  let x_210 : f32 = u_xlat17;
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_210, x_210, x_210) * x_212);
  let x_217 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_217;
  let x_220 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_220;
  let x_223 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_223;
  let x_227 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_227;
  let x_231 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_231;
  let x_234 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_234;
  let x_237 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_237;
  let x_240 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_240;
  let x_243 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_243;
  let x_247 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_249 : vec4<f32> = in_POSITION0;
  let x_252 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.w, x_249.w, x_249.w)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_257 : vec4<f32> = in_POSITION0;
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_256 * vec4<f32>(x_257.w, x_257.w, x_257.w, x_257.w)) + x_260);
  let x_264 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_264;
  let x_266 : f32 = u_xlat1.y;
  let x_269 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2.x = (x_266 * x_269);
  let x_273 : f32 = x_17.unity_MatrixV[0i].z;
  let x_275 : f32 = u_xlat1.x;
  let x_278 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_273 * x_275) + x_278);
  let x_282 : f32 = x_17.unity_MatrixV[2i].z;
  let x_284 : f32 = u_xlat1.z;
  let x_287 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_17.unity_MatrixV[3i].z;
  let x_293 : f32 = u_xlat1.w;
  let x_296 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_291 * x_293) + x_296);
  let x_302 : f32 = u_xlat2.x;
  vs_TEXCOORD5.z = -(x_302);
  let x_306 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.w));
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_317 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.w) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_328 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.w) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.w) * vec3<f32>(x_339.w, x_339.w, x_339.w)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_351 : vec2<f32> = (vec2<f32>(x_347.x, x_347.z) * vec2<f32>(0.5f, 0.5f));
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_351.x, x_352.y, x_351.y, x_352.w);
  let x_355 : f32 = u_xlat1.y;
  let x_357 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.x = (x_355 * x_357);
  let x_361 : f32 = u_xlat1.z;
  vs_TEXCOORD5.w = x_361;
  let x_364 : f32 = u_xlat1.x;
  u_xlat2.w = (x_364 * 0.5f);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat2;
  let x_371 : vec2<f32> = (vec2<f32>(x_367.z, x_367.z) + vec2<f32>(x_369.x, x_369.w));
  let x_372 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_380 : vec3<f32> = (vec3<f32>(x_374.y, x_374.y, x_374.y) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_386 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.x, x_386.x, x_386.x)) + vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_397 : vec4<f32> = u_xlat0;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.z, x_397.z, x_397.z)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_408 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_410 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.w, x_410.w, x_410.w)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD8_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD8, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}

