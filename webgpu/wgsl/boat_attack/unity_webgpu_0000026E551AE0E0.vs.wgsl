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

@group(1) @binding(0) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

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
  let x_194 : f32 = u_xlat0.y;
  let x_197 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2 = (x_194 * x_197);
  let x_200 : f32 = x_18.unity_MatrixV[0i].z;
  let x_203 : f32 = u_xlat0.x;
  let x_205 : f32 = u_xlat2;
  u_xlat0.x = ((x_200 * x_203) + x_205);
  let x_209 : f32 = x_18.unity_MatrixV[2i].z;
  let x_211 : f32 = u_xlat0.z;
  let x_214 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_209 * x_211) + x_214);
  let x_218 : f32 = x_18.unity_MatrixV[3i].z;
  let x_220 : f32 = u_xlat0.w;
  let x_223 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_218 * x_220) + x_223);
  let x_227 : f32 = u_xlat0.x;
  let x_229 : f32 = x_18.x_ProjectionParams.w;
  u_xlat0.x = (x_227 * x_229);
  let x_234 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = -(x_234);
  let x_239 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_243 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_245 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_243.y, x_243.y, x_243.y));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_249 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_252 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_261 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_264 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_267 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_264.z, x_264.z, x_264.z)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_276 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_276.w, x_276.w, x_276.w)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), x_288);
  let x_292 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_295 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_297 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_295.y, x_295.y, x_295.y));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_304 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_304.x, x_304.x, x_304.x)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_316 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_328 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_328.w, x_328.w, x_328.w)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), x_338);
  let x_342 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_345 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_347 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_345.y, x_345.y, x_345.y));
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_354 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.x, x_354.x)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_366 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_378 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_378.w, x_378.w, x_378.w)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), x_388);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_396);
  let x_398 : f32 = u_xlat6;
  let x_400 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}


