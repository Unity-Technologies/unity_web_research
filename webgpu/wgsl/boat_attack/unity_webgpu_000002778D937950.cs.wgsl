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

var<private> u_xlatb4 : bool;

var<workgroup> TGSM0 : array<S, 128u>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlati6 : i32;

var<private> u_xlatb0 : bool;

var<private> u_xlati0 : i32;

var<private> u_xlati2 : i32;

@group(0) @binding(1) var<storage, read_write> x_210 : x_Output_origX0X;

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
  let x_49 : f32 = u_xlat4;
  let x_51 : u32 = gl_LocalInvocationIndex;
  u_xlatb4 = (bitcast<i32>(x_49) == bitcast<i32>(x_51));
  let x_54 : bool = u_xlatb4;
  u_xlati4 = select(0i, 1i, x_54);
  let x_64 : u32 = gl_LocalInvocationIndex;
  let x_65 : i32 = u_xlati4;
  TGSM0[x_64].value[0i] = bitcast<u32>(x_65);
  workgroupBarrier();
  let x_75 : vec2<u32> = u_xlatu0;
  u_xlatb1 = (vec4<u32>(x_75.x, x_75.x, x_75.x, x_75.x) < vec4<u32>(16u, 8u, 4u, 2u));
  let x_83 : bool = u_xlatb1.x;
  if (x_83) {
    let x_87 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_87) + 16i);
    let x_91 : i32 = u_xlati6;
    let x_93 : u32 = TGSM0[x_91].value[0i];
    u_xlati6 = bitcast<i32>(x_93);
    let x_95 : i32 = u_xlati6;
    let x_96 : i32 = u_xlati4;
    u_xlati4 = (x_95 * x_96);
    let x_98 : u32 = gl_LocalInvocationIndex;
    let x_99 : i32 = u_xlati4;
    TGSM0[x_98].value[0i] = bitcast<u32>(x_99);
  }
  workgroupBarrier();
  let x_103 : bool = u_xlatb1.y;
  if (x_103) {
    let x_106 : u32 = gl_LocalInvocationIndex;
    let x_108 : u32 = TGSM0[x_106].value[0i];
    u_xlati4 = bitcast<i32>(x_108);
    let x_110 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_110) + 8i);
    let x_114 : i32 = u_xlati6;
    let x_116 : u32 = TGSM0[x_114].value[0i];
    u_xlati6 = bitcast<i32>(x_116);
    let x_118 : i32 = u_xlati6;
    let x_119 : i32 = u_xlati4;
    u_xlati4 = (x_118 * x_119);
    let x_121 : u32 = gl_LocalInvocationIndex;
    let x_122 : i32 = u_xlati4;
    TGSM0[x_121].value[0i] = bitcast<u32>(x_122);
  }
  workgroupBarrier();
  let x_126 : bool = u_xlatb1.z;
  if (x_126) {
    let x_129 : u32 = gl_LocalInvocationIndex;
    let x_131 : u32 = TGSM0[x_129].value[0i];
    u_xlati4 = bitcast<i32>(x_131);
    let x_133 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_133) + 4i);
    let x_137 : i32 = u_xlati6;
    let x_139 : u32 = TGSM0[x_137].value[0i];
    u_xlati6 = bitcast<i32>(x_139);
    let x_141 : i32 = u_xlati6;
    let x_142 : i32 = u_xlati4;
    u_xlati4 = (x_141 * x_142);
    let x_144 : u32 = gl_LocalInvocationIndex;
    let x_145 : i32 = u_xlati4;
    TGSM0[x_144].value[0i] = bitcast<u32>(x_145);
  }
  workgroupBarrier();
  let x_150 : bool = u_xlatb1.w;
  if (x_150) {
    let x_153 : u32 = gl_LocalInvocationIndex;
    let x_155 : u32 = TGSM0[x_153].value[0i];
    u_xlati4 = bitcast<i32>(x_155);
    let x_157 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_157) + 2i);
    let x_160 : i32 = u_xlati6;
    let x_162 : u32 = TGSM0[x_160].value[0i];
    u_xlati6 = bitcast<i32>(x_162);
    let x_164 : i32 = u_xlati6;
    let x_165 : i32 = u_xlati4;
    u_xlati4 = (x_164 * x_165);
    let x_167 : u32 = gl_LocalInvocationIndex;
    let x_168 : i32 = u_xlati4;
    TGSM0[x_167].value[0i] = bitcast<u32>(x_168);
  }
  workgroupBarrier();
  let x_174 : u32 = u_xlatu0.x;
  u_xlatb0 = (x_174 < 1u);
  let x_176 : bool = u_xlatb0;
  if (x_176) {
    let x_180 : u32 = gl_LocalInvocationIndex;
    let x_182 : u32 = TGSM0[x_180].value[0i];
    u_xlati0 = bitcast<i32>(x_182);
    let x_184 : u32 = gl_LocalInvocationIndex;
    u_xlati4 = (bitcast<i32>(x_184) + 1i);
    let x_187 : i32 = u_xlati4;
    let x_189 : u32 = TGSM0[x_187].value[0i];
    u_xlati4 = bitcast<i32>(x_189);
    let x_191 : i32 = u_xlati4;
    let x_192 : i32 = u_xlati0;
    u_xlati0 = (x_191 * x_192);
    let x_194 : u32 = gl_LocalInvocationIndex;
    let x_195 : i32 = u_xlati0;
    TGSM0[x_194].value[0i] = bitcast<u32>(x_195);
  }
  workgroupBarrier();
  let x_199 : u32 = u_xlatu0.y;
  let x_201 : u32 = TGSM0[x_199].value[0i];
  u_xlati0 = bitcast<i32>(x_201);
  let x_204 : u32 = gl_LocalInvocationIndex;
  u_xlati2 = (bitcast<i32>(x_204) << bitcast<u32>(2i));
  let x_211 : i32 = u_xlati2;
  let x_213 : i32 = u_xlati0;
  x_210.x_Output_origX0X_buf[(x_211 >> bitcast<u32>(2i))] = bitcast<u32>(x_213);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

