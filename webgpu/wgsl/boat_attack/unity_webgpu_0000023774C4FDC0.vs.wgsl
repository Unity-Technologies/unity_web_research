diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  unity_MatrixInvV : mat4x4<f32>,
  /* @offset(272) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(336) */
  x_TreeInstanceScale : vec4<f32>,
  /* @offset(352) */
  x_TerrainEngineBendTree : mat4x4<f32>,
  /* @offset(416) */
  x_SquashPlaneNormal : vec4<f32>,
  /* @offset(432) */
  x_SquashAmount : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_TreeInstanceScale;
  let x_25 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_25.z, x_26.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_18.x_TerrainEngineBendTree[1i];
  let x_36 : vec3<f32> = (vec3<f32>(x_29.y, x_29.y, x_29.y) * vec3<f32>(x_34.x, x_34.y, x_34.z));
  let x_37 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_41 : vec4<f32> = x_18.x_TerrainEngineBendTree[0i];
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = u_xlat1;
  let x_48 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_43.x, x_43.x, x_43.x)) + vec3<f32>(x_46.x, x_46.y, x_46.z));
  let x_49 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_53 : vec4<f32> = x_18.x_TerrainEngineBendTree[2i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.z, x_55.z, x_55.z)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_63 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = x_18.x_TreeInstanceScale;
  let x_70 : vec4<f32> = u_xlat1;
  let x_72 : vec3<f32> = ((-(vec3<f32>(x_63.x, x_63.y, x_63.z)) * vec3<f32>(x_67.x, x_67.y, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_76 : vec4<f32> = in_COLOR0;
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.w, x_76.w, x_76.w) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_90 : vec4<f32> = x_18.x_SquashPlaneNormal;
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_90.x, x_90.y, x_90.z), vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : f32 = u_xlat6;
  let x_100 : f32 = x_18.x_SquashPlaneNormal.w;
  u_xlat6 = (x_95 + x_100);
  let x_102 : f32 = u_xlat6;
  let x_106 : vec4<f32> = x_18.x_SquashPlaneNormal;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec3<f32> = ((-(vec3<f32>(x_102, x_102, x_102)) * vec3<f32>(x_106.x, x_106.y, x_106.z)) + vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) + -(vec3<f32>(x_116.x, x_116.y, x_116.z)));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_124 : f32 = x_18.x_SquashAmount;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_137);
  let x_140 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_148 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_147 * vec4<f32>(x_148.z, x_148.z, x_148.z, x_148.z)) + x_151);
  let x_153 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_153 + x_156);
  let x_158 : vec4<f32> = u_xlat0;
  let x_162 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_158.y, x_158.y, x_158.y, x_158.y) * x_162);
  let x_165 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_165 * vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_169);
  let x_172 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_172 * vec4<f32>(x_173.z, x_173.z, x_173.z, x_173.z)) + x_176);
  let x_184 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat1;
  gl_Position = ((x_184 * vec4<f32>(x_185.w, x_185.w, x_185.w, x_185.w)) + x_188);
  let x_196 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_196.x, x_196.y);
  let x_200 : f32 = u_xlat0.y;
  let x_203 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2 = (x_200 * x_203);
  let x_206 : f32 = x_18.unity_MatrixV[0i].z;
  let x_209 : f32 = u_xlat0.x;
  let x_211 : f32 = u_xlat2;
  u_xlat0.x = ((x_206 * x_209) + x_211);
  let x_215 : f32 = x_18.unity_MatrixV[2i].z;
  let x_217 : f32 = u_xlat0.z;
  let x_220 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_215 * x_217) + x_220);
  let x_224 : f32 = x_18.unity_MatrixV[3i].z;
  let x_226 : f32 = u_xlat0.w;
  let x_229 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_224 * x_226) + x_229);
  let x_233 : f32 = u_xlat0.x;
  let x_235 : f32 = x_18.x_ProjectionParams.w;
  u_xlat0.x = (x_233 * x_235);
  let x_240 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_240);
  let x_245 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_249 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_249.y, x_249.y, x_249.y));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_258 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_258.x, x_258.x, x_258.x)) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_270 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_282 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_282.w, x_282.w, x_282.w)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat0;
  let x_294 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), x_294);
  let x_298 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_301 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_301.y, x_301.y, x_301.y));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_310 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_310.x, x_310.x, x_310.x)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_322 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_322.z, x_322.z, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_334 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_334.w, x_334.w, x_334.w)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), x_344);
  let x_348 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_351 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_353 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_351.y, x_351.y, x_351.y));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_360 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_360.x, x_360.x, x_360.x)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_372 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_372.z, x_372.z, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_384 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_384.w, x_384.w, x_384.w)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat1;
  let x_394 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), x_394);
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_402);
  let x_404 : f32 = u_xlat6;
  let x_406 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = -(vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}


