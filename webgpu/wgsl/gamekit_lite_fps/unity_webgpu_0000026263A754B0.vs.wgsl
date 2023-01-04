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

@group(0) @binding(4) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec2<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(3) var<uniform> x_179 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu7 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

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
  var x_358 : vec2<f32>;
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
  let x_157 : i32 = u_xlati1;
  let x_160 : u32 = x_63.unity_ParticleInstanceData_buf[x_157].value[13i];
  u_xlat1.x = bitcast<f32>(x_160);
  let x_164 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_164);
  let x_168 : f32 = u_xlat5.y;
  u_xlat3.w = x_168;
  let x_171 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat13;
  let x_182 : vec4<f32> = x_179.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_174, x_174, x_174, x_174) * x_182);
  let x_185 : f32 = u_xlat2.y;
  u_xlat4.x = x_185;
  let x_188 : f32 = u_xlat4.z;
  u_xlat2.y = x_188;
  let x_191 : f32 = u_xlat7.x;
  u_xlat4.z = x_191;
  let x_194 : f32 = u_xlat7.z;
  u_xlat2.z = x_194;
  let x_197 : f32 = u_xlat5.x;
  u_xlat4.w = x_197;
  let x_199 : vec4<f32> = u_xlat4;
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(x_199, x_200);
  let x_204 : vec4<f32> = x_179.unity_MatrixVP[0i];
  let x_205 : vec3<f32> = u_xlat7;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_204 * vec4<f32>(x_205.x, x_205.x, x_205.x, x_205.x)) + x_208);
  let x_211 : f32 = u_xlat5.z;
  u_xlat2.w = x_211;
  let x_213 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_213, x_214);
  let x_218 : vec4<f32> = x_179.unity_MatrixVP[2i];
  let x_219 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_218 * vec4<f32>(x_219.x, x_219.x, x_219.x, x_219.x)) + x_222);
  let x_228 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_179.unity_MatrixVP[3i];
  gl_Position = (x_228 + x_230);
  let x_235 : vec4<f32> = in_COLOR0;
  u_xlat0 = (x_235 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_241 : f32 = x_179.unity_ParticleUseMeshColors;
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_241, x_241, x_241, x_241) * x_243) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : f32 = u_xlat5.w;
  u_xlatu7.x = (bitcast<u32>(x_251) & 255u);
  let x_258 : u32 = u_xlatu7.x;
  u_xlat2.x = f32(x_258);
  let x_262 : f32 = u_xlat5.w;
  param = bitcast<u32>(x_262);
  param_1 = 8i;
  param_2 = 8i;
  let x_267 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_269 : f32 = u_xlat5.w;
  param_3 = bitcast<u32>(x_269);
  param_4 = 16i;
  param_5 = 8i;
  let x_275 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_277 : vec2<u32> = vec2<u32>(x_267, x_275);
  let x_278 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_277.x, x_277.y, x_278.z);
  let x_281 : f32 = u_xlat5.w;
  u_xlatu7.z = (bitcast<u32>(x_281) >> 24u);
  let x_286 : vec3<u32> = u_xlatu7;
  let x_287 : vec3<f32> = vec3<f32>(x_286);
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_287.x, x_287.y, x_287.z);
  let x_290 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_290 * x_291);
  let x_294 : vec4<f32> = u_xlat0;
  vs_COLOR0 = (x_294 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_299 : f32 = u_xlat1.x;
  let x_301 : f32 = x_179.unity_ParticleUVShiftData.y;
  u_xlat0.x = (x_299 / x_301);
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_305);
  let x_310 : f32 = u_xlat0.x;
  let x_313 : f32 = x_179.unity_ParticleUVShiftData.y;
  let x_316 : f32 = u_xlat1.x;
  u_xlat6 = ((-(x_310) * x_313) + x_316);
  let x_318 : f32 = u_xlat6;
  u_xlat6 = floor(x_318);
  let x_320 : f32 = u_xlat6;
  let x_322 : f32 = x_179.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_320 * x_322);
  let x_326 : f32 = x_179.unity_ParticleUVShiftData.w;
  u_xlat6 = (-(x_326) + 1.0f);
  let x_330 : f32 = u_xlat0.x;
  let x_333 : f32 = x_179.unity_ParticleUVShiftData.w;
  let x_335 : f32 = u_xlat6;
  u_xlat1.y = ((-(x_330) * x_333) + x_335);
  let x_340 : vec2<f32> = in_TEXCOORD0;
  let x_342 : vec4<f32> = x_179.unity_ParticleUVShiftData;
  let x_345 : vec2<f32> = u_xlat1;
  let x_346 : vec2<f32> = ((x_340 * vec2<f32>(x_342.z, x_342.w)) + x_345);
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
  let x_353 : f32 = x_179.unity_ParticleUVShiftData.x;
  u_xlatb12 = !((x_353 == 0.0f));
  let x_356 : bool = u_xlatb12;
  if (x_356) {
    let x_361 : vec4<f32> = u_xlat0;
    x_358 = vec2<f32>(x_361.x, x_361.y);
  } else {
    let x_364 : vec2<f32> = in_TEXCOORD0;
    x_358 = x_364;
  }
  let x_365 : vec2<f32> = x_358;
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
  let x_370 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = x_179.x_MainTex_ST;
  let x_377 : vec4<f32> = x_179.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_370.x, x_370.y) * vec2<f32>(x_373.x, x_373.y)) + vec2<f32>(x_377.z, x_377.w));
  return;
}

struct main_out {
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
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1);
}

