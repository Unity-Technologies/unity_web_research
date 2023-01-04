struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var<storage, read> x_31 : unity_ParticleInstanceData;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_260 : VGlobals;

var<private> u_xlatb21 : bool;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_323 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_32 : i32 = u_xlati0;
  let x_36 : u32 = x_31.unity_ParticleInstanceData_buf[x_32].value[7i];
  let x_38 : i32 = u_xlati0;
  let x_41 : u32 = x_31.unity_ParticleInstanceData_buf[x_38].value[8i];
  let x_43 : i32 = u_xlati0;
  let x_46 : u32 = x_31.unity_ParticleInstanceData_buf[x_43].value[6i];
  let x_49 : vec3<f32> = vec3<f32>(bitcast<f32>(x_36), bitcast<f32>(x_41), bitcast<f32>(x_46));
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_56 : f32 = u_xlat1.y;
  u_xlat2.z = x_56;
  let x_60 : i32 = u_xlati0;
  let x_63 : u32 = x_31.unity_ParticleInstanceData_buf[x_60].value[1i];
  let x_65 : i32 = u_xlati0;
  let x_67 : u32 = x_31.unity_ParticleInstanceData_buf[x_65].value[0i];
  let x_69 : i32 = u_xlati0;
  let x_72 : u32 = x_31.unity_ParticleInstanceData_buf[x_69].value[2i];
  let x_74 : vec3<f32> = vec3<f32>(bitcast<f32>(x_63), bitcast<f32>(x_67), bitcast<f32>(x_72));
  let x_75 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_78 : f32 = u_xlat3.z;
  u_xlat2.x = x_78;
  let x_83 : i32 = u_xlati0;
  let x_86 : u32 = x_31.unity_ParticleInstanceData_buf[x_83].value[3i];
  let x_88 : i32 = u_xlati0;
  let x_91 : u32 = x_31.unity_ParticleInstanceData_buf[x_88].value[4i];
  let x_93 : i32 = u_xlati0;
  let x_96 : u32 = x_31.unity_ParticleInstanceData_buf[x_93].value[5i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_86), bitcast<f32>(x_91), bitcast<f32>(x_96));
  let x_100 : i32 = u_xlati0;
  let x_103 : u32 = x_31.unity_ParticleInstanceData_buf[x_100].value[9i];
  let x_105 : i32 = u_xlati0;
  let x_108 : u32 = x_31.unity_ParticleInstanceData_buf[x_105].value[10i];
  let x_110 : i32 = u_xlati0;
  let x_113 : u32 = x_31.unity_ParticleInstanceData_buf[x_110].value[11i];
  u_xlat4 = vec3<f32>(bitcast<f32>(x_103), bitcast<f32>(x_108), bitcast<f32>(x_113));
  let x_117 : f32 = u_xlat7.z;
  u_xlat2.y = x_117;
  let x_120 : f32 = u_xlat1.x;
  u_xlat3.z = x_120;
  let x_123 : f32 = u_xlat3.y;
  u_xlat1.x = x_123;
  let x_126 : f32 = u_xlat7.x;
  u_xlat1.y = x_126;
  let x_129 : f32 = u_xlat7.y;
  u_xlat3.y = x_129;
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.z, x_132.x, x_132.y) * vec3<f32>(x_134.y, x_134.z, x_134.x));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = ((vec3<f32>(x_139.z, x_139.x, x_139.y) * vec3<f32>(x_141.y, x_141.z, x_141.x)) + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_151.y, x_151.z, x_151.x) * vec3<f32>(x_153.z, x_153.x, x_153.y));
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec4<f32> = u_xlat2;
  let x_161 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_156.y, x_156.z, x_156.x) * vec3<f32>(x_158.z, x_158.x, x_158.y)) + -(x_161));
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), x_167);
  let x_170 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_170);
  let x_172 : f32 = u_xlat21;
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = (vec3<f32>(x_172, x_172, x_172) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_181 : vec3<f32> = in_NORMAL0;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_181, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_187.z, x_187.x, x_187.y) * vec3<f32>(x_189.y, x_189.z, x_189.x));
  let x_192 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_192.y, x_192.z, x_192.x) * vec3<f32>(x_194.z, x_194.x, x_194.y)) + -(x_197));
  let x_200 : f32 = u_xlat21;
  let x_202 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : f32 = u_xlat21;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_208 : vec3<f32> = in_NORMAL0;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_208, x_209);
  let x_212 : vec3<f32> = in_NORMAL0;
  let x_213 : vec3<f32> = u_xlat6;
  u_xlat0.z = dot(x_212, x_213);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_221);
  let x_223 : f32 = u_xlat21;
  let x_225 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = (vec3<f32>(x_223, x_223, x_223) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = u_xlat4.x;
  u_xlat1.w = x_231;
  let x_234 : vec4<f32> = u_xlat1;
  let x_237 : vec4<f32> = in_POSITION0;
  u_xlat1.x = dot(x_234, x_237);
  let x_241 : f32 = u_xlat4.y;
  u_xlat3.w = x_241;
  let x_244 : f32 = u_xlat4.z;
  u_xlat2.w = x_244;
  let x_246 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = in_POSITION0;
  u_xlat1.z = dot(x_246, x_247);
  let x_250 : vec4<f32> = u_xlat3;
  let x_251 : vec4<f32> = in_POSITION0;
  u_xlat1.y = dot(x_250, x_251);
  let x_254 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = x_260.x_WorldSpaceLightPos0;
  let x_267 : vec4<f32> = x_260.x_WorldSpaceLightPos0;
  let x_269 : vec3<f32> = ((-(vec3<f32>(x_254.x, x_254.y, x_254.z)) * vec3<f32>(x_263.w, x_263.w, x_263.w)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_277);
  let x_279 : f32 = u_xlat21;
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec3<f32> = (vec3<f32>(x_279, x_279, x_279) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat21;
  let x_293 : f32 = u_xlat21;
  u_xlat21 = ((-(x_291) * x_293) + 1.0f);
  let x_296 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_296);
  let x_298 : f32 = u_xlat21;
  let x_301 : f32 = x_260.unity_LightShadowBias.z;
  u_xlat21 = (x_298 * x_301);
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : f32 = u_xlat21;
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = ((-(vec3<f32>(x_303.x, x_303.y, x_303.z)) * vec3<f32>(x_306, x_306, x_306)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_318 : f32 = x_260.unity_LightShadowBias.z;
  u_xlatb21 = !((x_318 == 0.0f));
  let x_321 : bool = u_xlatb21;
  if (x_321) {
    let x_326 : vec4<f32> = u_xlat0;
    x_323 = vec3<f32>(x_326.x, x_326.y, x_326.z);
  } else {
    let x_329 : vec4<f32> = u_xlat1;
    x_323 = vec3<f32>(x_329.x, x_329.y, x_329.z);
  }
  let x_331 : vec3<f32> = x_323;
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = x_260.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_334.y, x_334.y, x_334.y, x_334.y) * x_337);
  let x_340 : vec4<f32> = x_260.unity_MatrixVP[0i];
  let x_341 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_340 * vec4<f32>(x_341.x, x_341.x, x_341.x, x_341.x)) + x_344);
  let x_347 : vec4<f32> = x_260.unity_MatrixVP[2i];
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_347 * vec4<f32>(x_348.z, x_348.z, x_348.z, x_348.z)) + x_351);
  let x_354 : vec4<f32> = x_260.unity_MatrixVP[3i];
  let x_355 : vec4<f32> = in_POSITION0;
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_354 * vec4<f32>(x_355.w, x_355.w, x_355.w, x_355.w)) + x_358);
  let x_361 : f32 = u_xlat0.w;
  let x_363 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_361, x_363);
  let x_367 : f32 = u_xlat0.z;
  let x_370 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_367) + x_370);
  let x_378 : f32 = x_260.unity_LightShadowBias.y;
  let x_380 : f32 = u_xlat1.x;
  let x_383 : f32 = u_xlat0.z;
  gl_Position.z = ((x_378 * x_380) + x_383);
  let x_387 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.w);
  let x_391 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_388.x, x_388.y, x_391.z, x_388.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

