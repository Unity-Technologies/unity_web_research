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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(8) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(9) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(7) var<uniform> x_177 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu12 : u32;

var<private> u_xlatu7 : vec2<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_389 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_47 : i32 = gl_InstanceIndex;
  let x_54 : i32 = x_50.unity_BaseInstanceID;
  u_xlati1 = (x_47 + x_54);
  let x_64 : i32 = u_xlati1;
  let x_68 : u32 = x_63.unity_ParticleInstanceData_buf[x_64].value[2i];
  let x_70 : i32 = u_xlati1;
  let x_72 : u32 = x_63.unity_ParticleInstanceData_buf[x_70].value[0i];
  let x_74 : i32 = u_xlati1;
  let x_77 : u32 = x_63.unity_ParticleInstanceData_buf[x_74].value[1i];
  let x_79 : vec3<f32> = vec3<f32>(bitcast<f32>(x_68), bitcast<f32>(x_72), bitcast<f32>(x_77));
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_85 : f32 = u_xlat2.z;
  u_xlat3.x = x_85;
  let x_89 : i32 = u_xlati1;
  let x_92 : u32 = x_63.unity_ParticleInstanceData_buf[x_89].value[4i];
  let x_94 : i32 = u_xlati1;
  let x_97 : u32 = x_63.unity_ParticleInstanceData_buf[x_94].value[3i];
  let x_99 : i32 = u_xlati1;
  let x_102 : u32 = x_63.unity_ParticleInstanceData_buf[x_99].value[5i];
  let x_104 : vec3<f32> = vec3<f32>(bitcast<f32>(x_92), bitcast<f32>(x_97), bitcast<f32>(x_102));
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : f32 = u_xlat4.x;
  u_xlat3.y = x_108;
  let x_113 : i32 = u_xlati1;
  let x_116 : u32 = x_63.unity_ParticleInstanceData_buf[x_113].value[6i];
  let x_118 : i32 = u_xlati1;
  let x_121 : u32 = x_63.unity_ParticleInstanceData_buf[x_118].value[7i];
  let x_123 : i32 = u_xlati1;
  let x_126 : u32 = x_63.unity_ParticleInstanceData_buf[x_123].value[8i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_116), bitcast<f32>(x_121), bitcast<f32>(x_126));
  let x_130 : f32 = u_xlat7.y;
  u_xlat3.z = x_130;
  let x_133 : i32 = u_xlati1;
  let x_136 : u32 = x_63.unity_ParticleInstanceData_buf[x_133].value[9i];
  let x_138 : i32 = u_xlati1;
  let x_141 : u32 = x_63.unity_ParticleInstanceData_buf[x_138].value[10i];
  let x_143 : i32 = u_xlati1;
  let x_146 : u32 = x_63.unity_ParticleInstanceData_buf[x_143].value[11i];
  let x_148 : i32 = u_xlati1;
  let x_151 : u32 = x_63.unity_ParticleInstanceData_buf[x_148].value[12i];
  u_xlat5 = vec4<f32>(bitcast<f32>(x_136), bitcast<f32>(x_141), bitcast<f32>(x_146), bitcast<f32>(x_151));
  let x_155 : i32 = u_xlati1;
  let x_158 : u32 = x_63.unity_ParticleInstanceData_buf[x_155].value[13i];
  u_xlat1.x = bitcast<f32>(x_158);
  let x_162 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_162);
  let x_166 : f32 = u_xlat5.y;
  u_xlat3.w = x_166;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(x_169, x_170);
  let x_172 : f32 = u_xlat13;
  let x_180 : vec4<f32> = x_177.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_172, x_172, x_172, x_172) * x_180);
  let x_182 : f32 = u_xlat13;
  let x_185 : f32 = x_177.unity_MatrixV[1i].z;
  u_xlat13 = (x_182 * x_185);
  let x_188 : f32 = u_xlat2.y;
  u_xlat4.x = x_188;
  let x_191 : f32 = u_xlat4.z;
  u_xlat2.y = x_191;
  let x_194 : f32 = u_xlat7.x;
  u_xlat4.z = x_194;
  let x_197 : f32 = u_xlat7.z;
  u_xlat2.z = x_197;
  let x_200 : f32 = u_xlat5.x;
  u_xlat4.w = x_200;
  let x_202 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(x_202, x_203);
  let x_207 : vec4<f32> = x_177.unity_MatrixVP[0i];
  let x_208 : vec3<f32> = u_xlat7;
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_207 * vec4<f32>(x_208.x, x_208.x, x_208.x, x_208.x)) + x_211);
  let x_214 : f32 = x_177.unity_MatrixV[0i].z;
  let x_216 : f32 = u_xlat7.x;
  let x_218 : f32 = u_xlat13;
  u_xlat7.x = ((x_214 * x_216) + x_218);
  let x_222 : f32 = u_xlat5.z;
  u_xlat2.w = x_222;
  let x_224 : vec4<f32> = u_xlat2;
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_224, x_225);
  let x_229 : vec4<f32> = x_177.unity_MatrixVP[2i];
  let x_230 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_229 * vec4<f32>(x_230.x, x_230.x, x_230.x, x_230.x)) + x_233);
  let x_236 : f32 = x_177.unity_MatrixV[2i].z;
  let x_238 : f32 = u_xlat0.x;
  let x_241 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_236 * x_238) + x_241);
  let x_245 : f32 = u_xlat0.x;
  let x_247 : f32 = x_177.unity_MatrixV[3i].z;
  u_xlat0.x = (x_245 + x_247);
  let x_253 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_253);
  let x_257 : vec4<f32> = u_xlat2;
  let x_259 : vec4<f32> = x_177.unity_MatrixVP[3i];
  u_xlat0 = (x_257 + x_259);
  let x_265 : vec4<f32> = u_xlat0;
  gl_Position = x_265;
  let x_268 : vec4<f32> = in_COLOR0;
  u_xlat2 = (x_268 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_273 : f32 = x_177.unity_ParticleUseMeshColors;
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_273, x_273, x_273, x_273) * x_275) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_282 : f32 = u_xlat5.w;
  u_xlatu12 = (bitcast<u32>(x_282) & 255u);
  let x_286 : u32 = u_xlatu12;
  u_xlat3.x = f32(x_286);
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
  u_xlatu7 = vec2<u32>(x_298, x_306);
  let x_309 : f32 = u_xlat5.w;
  u_xlatu12 = (bitcast<u32>(x_309) >> 24u);
  let x_313 : u32 = u_xlatu12;
  u_xlat3.w = f32(x_313);
  let x_316 : vec2<u32> = u_xlatu7;
  let x_318 : vec2<f32> = vec2<f32>(x_316);
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_319.w);
  let x_321 : vec4<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_321 * x_322);
  let x_325 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_325 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_331 : f32 = u_xlat1.x;
  let x_333 : f32 = x_177.unity_ParticleUVShiftData.y;
  u_xlat12 = (x_331 / x_333);
  let x_335 : f32 = u_xlat12;
  u_xlat12 = floor(x_335);
  let x_337 : f32 = u_xlat12;
  let x_340 : f32 = x_177.unity_ParticleUVShiftData.y;
  let x_343 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_337) * x_340) + x_343);
  let x_347 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_347);
  let x_351 : f32 = u_xlat1.x;
  let x_353 : f32 = x_177.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_351 * x_353);
  let x_357 : f32 = x_177.unity_ParticleUVShiftData.w;
  u_xlat13 = (-(x_357) + 1.0f);
  let x_360 : f32 = u_xlat12;
  let x_363 : f32 = x_177.unity_ParticleUVShiftData.w;
  let x_365 : f32 = u_xlat13;
  u_xlat1.y = ((-(x_360) * x_363) + x_365);
  let x_370 : vec2<f32> = in_TEXCOORD0;
  let x_372 : vec4<f32> = x_177.unity_ParticleUVShiftData;
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec2<f32> = ((x_370 * vec2<f32>(x_372.z, x_372.w)) + vec2<f32>(x_375.x, x_375.y));
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_384 : f32 = x_177.unity_ParticleUVShiftData.x;
  u_xlatb12 = !((x_384 == 0.0f));
  let x_387 : bool = u_xlatb12;
  if (x_387) {
    let x_392 : vec4<f32> = u_xlat1;
    x_389 = vec2<f32>(x_392.x, x_392.y);
  } else {
    let x_395 : vec2<f32> = in_TEXCOORD0;
    x_389 = x_395;
  }
  let x_396 : vec2<f32> = x_389;
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = x_177.x_MainTex_ST;
  let x_408 : vec4<f32> = x_177.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_401.x, x_401.y) * vec2<f32>(x_404.x, x_404.y)) + vec2<f32>(x_408.z, x_408.w));
  let x_412 : f32 = u_xlat0.y;
  let x_414 : f32 = x_177.x_ProjectionParams.x;
  u_xlat0.y = (x_412 * x_414);
  let x_417 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.w, x_417.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_421.z);
  let x_425 : f32 = u_xlat0.w;
  vs_TEXCOORD3.w = x_425;
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec2<f32> = (vec2<f32>(x_427.z, x_427.z) + vec2<f32>(x_429.x, x_429.w));
  let x_432 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD3, gl_Position, vs_COLOR0, vs_TEXCOORD1);
}

