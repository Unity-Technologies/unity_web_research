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
  x_ProjectionParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_176 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlatu7 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat8 : vec2<f32>;
  var u_xlatb13 : bool;
  var x_396 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_46 : i32 = gl_InstanceIndex;
  let x_53 : i32 = x_49.unity_BaseInstanceID;
  u_xlati1 = (x_46 + x_53);
  let x_63 : i32 = u_xlati1;
  let x_67 : u32 = x_62.unity_ParticleInstanceData_buf[x_63].value[2i];
  let x_69 : i32 = u_xlati1;
  let x_71 : u32 = x_62.unity_ParticleInstanceData_buf[x_69].value[0i];
  let x_73 : i32 = u_xlati1;
  let x_76 : u32 = x_62.unity_ParticleInstanceData_buf[x_73].value[1i];
  let x_78 : vec3<f32> = vec3<f32>(bitcast<f32>(x_67), bitcast<f32>(x_71), bitcast<f32>(x_76));
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_84 : f32 = u_xlat2.z;
  u_xlat3.x = x_84;
  let x_88 : i32 = u_xlati1;
  let x_91 : u32 = x_62.unity_ParticleInstanceData_buf[x_88].value[4i];
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_62.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_62.unity_ParticleInstanceData_buf[x_98].value[5i];
  let x_103 : vec3<f32> = vec3<f32>(bitcast<f32>(x_91), bitcast<f32>(x_96), bitcast<f32>(x_101));
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : f32 = u_xlat4.x;
  u_xlat3.y = x_107;
  let x_112 : i32 = u_xlati1;
  let x_115 : u32 = x_62.unity_ParticleInstanceData_buf[x_112].value[6i];
  let x_117 : i32 = u_xlati1;
  let x_120 : u32 = x_62.unity_ParticleInstanceData_buf[x_117].value[7i];
  let x_122 : i32 = u_xlati1;
  let x_125 : u32 = x_62.unity_ParticleInstanceData_buf[x_122].value[8i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_115), bitcast<f32>(x_120), bitcast<f32>(x_125));
  let x_129 : f32 = u_xlat7.y;
  u_xlat3.z = x_129;
  let x_132 : i32 = u_xlati1;
  let x_135 : u32 = x_62.unity_ParticleInstanceData_buf[x_132].value[9i];
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_62.unity_ParticleInstanceData_buf[x_137].value[10i];
  let x_142 : i32 = u_xlati1;
  let x_145 : u32 = x_62.unity_ParticleInstanceData_buf[x_142].value[11i];
  let x_147 : i32 = u_xlati1;
  let x_150 : u32 = x_62.unity_ParticleInstanceData_buf[x_147].value[12i];
  u_xlat5 = vec4<f32>(bitcast<f32>(x_135), bitcast<f32>(x_140), bitcast<f32>(x_145), bitcast<f32>(x_150));
  let x_154 : i32 = u_xlati1;
  let x_157 : u32 = x_62.unity_ParticleInstanceData_buf[x_154].value[13i];
  u_xlat1.x = bitcast<f32>(x_157);
  let x_161 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_161);
  let x_165 : f32 = u_xlat5.y;
  u_xlat3.w = x_165;
  let x_168 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat13;
  let x_179 : vec4<f32> = x_176.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_171, x_171, x_171, x_171) * x_179);
  let x_181 : f32 = u_xlat13;
  let x_184 : f32 = x_176.unity_MatrixV[1i].z;
  u_xlat13 = (x_181 * x_184);
  let x_187 : f32 = u_xlat2.y;
  u_xlat4.x = x_187;
  let x_190 : f32 = u_xlat4.z;
  u_xlat2.y = x_190;
  let x_193 : f32 = u_xlat7.x;
  u_xlat4.z = x_193;
  let x_196 : f32 = u_xlat7.z;
  u_xlat2.z = x_196;
  let x_199 : f32 = u_xlat5.x;
  u_xlat4.w = x_199;
  let x_201 : vec4<f32> = u_xlat4;
  let x_202 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(x_201, x_202);
  let x_206 : vec4<f32> = x_176.unity_MatrixVP[0i];
  let x_207 : vec3<f32> = u_xlat7;
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_206 * vec4<f32>(x_207.x, x_207.x, x_207.x, x_207.x)) + x_210);
  let x_213 : f32 = x_176.unity_MatrixV[0i].z;
  let x_215 : f32 = u_xlat7.x;
  let x_217 : f32 = u_xlat13;
  u_xlat7.x = ((x_213 * x_215) + x_217);
  let x_221 : f32 = u_xlat5.z;
  u_xlat2.w = x_221;
  let x_223 : vec4<f32> = u_xlat2;
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_223, x_224);
  let x_228 : vec4<f32> = x_176.unity_MatrixVP[2i];
  let x_229 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_228 * vec4<f32>(x_229.x, x_229.x, x_229.x, x_229.x)) + x_232);
  let x_235 : f32 = x_176.unity_MatrixV[2i].z;
  let x_237 : f32 = u_xlat0.x;
  let x_240 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_235 * x_237) + x_240);
  let x_244 : f32 = u_xlat0.x;
  let x_246 : f32 = x_176.unity_MatrixV[3i].z;
  u_xlat0.x = (x_244 + x_246);
  let x_252 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_252);
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_176.unity_MatrixVP[3i];
  u_xlat0 = (x_256 + x_258);
  let x_264 : vec4<f32> = u_xlat0;
  gl_Position = x_264;
  let x_268 : vec4<f32> = in_COLOR0;
  u_xlat2 = (x_268 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_273 : f32 = x_176.unity_ParticleUseMeshColors;
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_273, x_273, x_273, x_273) * x_275) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_283 : f32 = u_xlat5.w;
  u_xlatu7.x = (bitcast<u32>(x_283) & 255u);
  let x_289 : u32 = u_xlatu7.x;
  u_xlat3.x = f32(x_289);
  let x_293 : f32 = u_xlat5.w;
  param = bitcast<u32>(x_293);
  param_1 = 8i;
  param_2 = 8i;
  let x_298 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_300 : f32 = u_xlat5.w;
  param_3 = bitcast<u32>(x_300);
  param_4 = 16i;
  param_5 = 8i;
  let x_306 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_308 : vec2<u32> = vec2<u32>(x_298, x_306);
  let x_309 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_308.x, x_308.y, x_309.z);
  let x_312 : f32 = u_xlat5.w;
  u_xlatu7.z = (bitcast<u32>(x_312) >> 24u);
  let x_317 : vec3<u32> = u_xlatu7;
  let x_318 : vec3<f32> = vec3<f32>(x_317);
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_318.z);
  let x_321 : vec4<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_321 * x_322);
  let x_325 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_325 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_330 : f32 = u_xlat1.x;
  let x_332 : f32 = x_176.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_330 / x_332);
  let x_336 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_336);
  let x_340 : f32 = u_xlat7.x;
  let x_343 : f32 = x_176.unity_ParticleUVShiftData.y;
  let x_346 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_340) * x_343) + x_346);
  let x_350 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_350);
  let x_357 : f32 = u_xlat1.x;
  let x_359 : f32 = x_176.unity_ParticleUVShiftData.z;
  u_xlat8.x = (x_357 * x_359);
  let x_363 : f32 = x_176.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_363) + 1.0f);
  let x_368 : f32 = u_xlat7.x;
  let x_371 : f32 = x_176.unity_ParticleUVShiftData.w;
  let x_374 : f32 = u_xlat1.x;
  u_xlat8.y = ((-(x_368) * x_371) + x_374);
  let x_379 : vec2<f32> = in_TEXCOORD0;
  let x_381 : vec4<f32> = x_176.unity_ParticleUVShiftData;
  let x_384 : vec2<f32> = u_xlat8;
  let x_385 : vec2<f32> = ((x_379 * vec2<f32>(x_381.z, x_381.w)) + x_384);
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
  let x_392 : f32 = x_176.unity_ParticleUVShiftData.x;
  u_xlatb13 = !((x_392 == 0.0f));
  let x_395 : bool = u_xlatb13;
  if (x_395) {
    let x_399 : vec4<f32> = u_xlat1;
    x_396 = vec2<f32>(x_399.x, x_399.y);
  } else {
    let x_402 : vec2<f32> = in_TEXCOORD0;
    x_396 = x_402;
  }
  let x_403 : vec2<f32> = x_396;
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_408 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = x_176.x_MainTex_ST;
  let x_415 : vec4<f32> = x_176.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411.x, x_411.y)) + vec2<f32>(x_415.z, x_415.w));
  let x_421 : f32 = u_xlat0.z;
  vs_TEXCOORD0 = x_421;
  let x_423 : f32 = u_xlat0.y;
  let x_425 : f32 = x_176.x_ProjectionParams.x;
  u_xlat0.y = (x_423 * x_425);
  let x_428 : vec4<f32> = u_xlat0;
  let x_432 : vec3<f32> = (vec3<f32>(x_428.x, x_428.w, x_428.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_432.x, x_433.y, x_432.y, x_432.z);
  let x_436 : f32 = u_xlat0.w;
  vs_TEXCOORD3.w = x_436;
  let x_438 : vec4<f32> = u_xlat1;
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec2<f32> = (vec2<f32>(x_438.z, x_438.z) + vec2<f32>(x_440.x, x_440.w));
  let x_443 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD0_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0);
}
