alias RTArr = array<u32>;

alias RTArr_1 = array<u32>;

struct x_Input {
  /* @offset(0) */
  x_Input_buf : RTArr_1,
}

struct S {
  value : array<u32, 1u>,
}

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr_1,
}

var<private> u_xlatu0 : vec2<u32>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlati4 : i32;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat4 : f32;

@group(0) @binding(0) var<storage, read> x_37 : x_Input;

var<private> u_xlatu4 : u32;

var<workgroup> TGSM0 : array<S, 128u>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlati6 : i32;

var<private> u_xlatu6 : u32;

var<private> u_xlatb0 : bool;

var<private> u_xlati0 : i32;

var<private> u_xlati2 : i32;

@group(0) @binding(1) var<storage, read_write> x_201 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = gl_LocalInvocationIndex;
  let x_13 : u32 = gl_LocalInvocationIndex;
  u_xlatu0 = (vec2<u32>(x_12, x_13) & vec2<u32>(31u, 96u));
  let x_27 : u32 = gl_GlobalInvocationID.x;
  u_xlati4 = (bitcast<i32>(x_27) << bitcast<u32>(2i));
  let x_39 : i32 = u_xlati4;
  let x_44 : u32 = x_37.x_Input_buf[((x_39 >> bitcast<u32>(2i)) + 0i)];
  u_xlat4 = bitcast<f32>(x_44);
  let x_48 : f32 = u_xlat4;
  u_xlatu4 = (bitcast<u32>(x_48) & 31u);
  let x_58 : u32 = gl_LocalInvocationIndex;
  let x_59 : u32 = u_xlatu4;
  TGSM0[x_58].value[0i] = x_59;
  workgroupBarrier();
  let x_69 : vec2<u32> = u_xlatu0;
  u_xlatb1 = (vec4<u32>(x_69.x, x_69.x, x_69.x, x_69.x) < vec4<u32>(16u, 8u, 4u, 2u));
  let x_78 : bool = u_xlatb1.x;
  if (x_78) {
    let x_82 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_82) + 16i);
    let x_87 : i32 = u_xlati6;
    let x_89 : u32 = TGSM0[x_87].value[0i];
    u_xlatu6 = x_89;
    let x_90 : u32 = u_xlatu6;
    let x_91 : u32 = u_xlatu4;
    u_xlatu4 = max(x_90, x_91);
    let x_93 : u32 = gl_LocalInvocationIndex;
    let x_94 : u32 = u_xlatu4;
    TGSM0[x_93].value[0i] = x_94;
  }
  workgroupBarrier();
  let x_97 : bool = u_xlatb1.y;
  if (x_97) {
    let x_100 : u32 = gl_LocalInvocationIndex;
    let x_102 : u32 = TGSM0[x_100].value[0i];
    u_xlatu4 = x_102;
    let x_103 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_103) + 8i);
    let x_107 : i32 = u_xlati6;
    let x_109 : u32 = TGSM0[x_107].value[0i];
    u_xlatu6 = x_109;
    let x_110 : u32 = u_xlatu6;
    let x_111 : u32 = u_xlatu4;
    u_xlatu4 = max(x_110, x_111);
    let x_113 : u32 = gl_LocalInvocationIndex;
    let x_114 : u32 = u_xlatu4;
    TGSM0[x_113].value[0i] = x_114;
  }
  workgroupBarrier();
  let x_117 : bool = u_xlatb1.z;
  if (x_117) {
    let x_120 : u32 = gl_LocalInvocationIndex;
    let x_122 : u32 = TGSM0[x_120].value[0i];
    u_xlatu4 = x_122;
    let x_123 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_123) + 4i);
    let x_127 : i32 = u_xlati6;
    let x_129 : u32 = TGSM0[x_127].value[0i];
    u_xlatu6 = x_129;
    let x_130 : u32 = u_xlatu6;
    let x_131 : u32 = u_xlatu4;
    u_xlatu4 = max(x_130, x_131);
    let x_133 : u32 = gl_LocalInvocationIndex;
    let x_134 : u32 = u_xlatu4;
    TGSM0[x_133].value[0i] = x_134;
  }
  workgroupBarrier();
  let x_138 : bool = u_xlatb1.w;
  if (x_138) {
    let x_141 : u32 = gl_LocalInvocationIndex;
    let x_143 : u32 = TGSM0[x_141].value[0i];
    u_xlatu4 = x_143;
    let x_144 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_144) + 2i);
    let x_147 : i32 = u_xlati6;
    let x_149 : u32 = TGSM0[x_147].value[0i];
    u_xlatu6 = x_149;
    let x_150 : u32 = u_xlatu6;
    let x_151 : u32 = u_xlatu4;
    u_xlatu4 = max(x_150, x_151);
    let x_153 : u32 = gl_LocalInvocationIndex;
    let x_154 : u32 = u_xlatu4;
    TGSM0[x_153].value[0i] = x_154;
  }
  workgroupBarrier();
  let x_158 : u32 = u_xlatu0.x;
  u_xlatb0 = (x_158 < 1u);
  let x_160 : bool = u_xlatb0;
  if (x_160) {
    let x_163 : u32 = gl_LocalInvocationIndex;
    let x_165 : u32 = TGSM0[x_163].value[0i];
    u_xlatu0.x = x_165;
    let x_167 : u32 = gl_LocalInvocationIndex;
    u_xlati4 = (bitcast<i32>(x_167) + 1i);
    let x_171 : i32 = u_xlati4;
    let x_173 : u32 = TGSM0[x_171].value[0i];
    u_xlatu4 = x_173;
    let x_174 : u32 = u_xlatu4;
    let x_176 : u32 = u_xlatu0.x;
    u_xlatu0.x = max(x_174, x_176);
    let x_179 : u32 = gl_LocalInvocationIndex;
    let x_181 : u32 = u_xlatu0.x;
    TGSM0[x_179].value[0i] = x_181;
  }
  workgroupBarrier();
  let x_185 : u32 = u_xlatu0.y;
  let x_187 : u32 = TGSM0[x_185].value[0i];
  u_xlati0 = bitcast<i32>(x_187);
  let x_189 : i32 = u_xlati0;
  u_xlatb0 = (x_189 == 31i);
  let x_192 : bool = u_xlatb0;
  u_xlati0 = select(0i, 1i, x_192);
  let x_195 : u32 = gl_LocalInvocationIndex;
  u_xlati2 = (bitcast<i32>(x_195) << bitcast<u32>(2i));
  let x_202 : i32 = u_xlati2;
  let x_204 : i32 = u_xlati0;
  x_201.x_Output_origX0X_buf[(x_202 >> bitcast<u32>(2i))] = bitcast<u32>(x_204);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

