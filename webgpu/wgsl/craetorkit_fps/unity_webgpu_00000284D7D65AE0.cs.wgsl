struct Params {
  x_Params : vec4<f32>,
}

type Arr = array<u32, 4u>;

struct x_WaveformBuffer_origX0X_type_atomic {
  value : array<atomic<u32>, 4u>,
}

struct x_WaveformBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_WaveformBuffer_origX0X_type>;

struct x_WaveformBuffer_origX0X_atomic {
  x_WaveformBuffer_origX0X_buf : array<x_WaveformBuffer_origX0X_type_atomic>,
}

struct x_WaveformBuffer_origX0X {
  x_WaveformBuffer_origX0X_buf : RTArr,
}

@group(1) @binding(0) var<uniform> x_14 : Params;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var x_Source : texture_2d<f32>;

@group(0) @binding(1) var<storage, read_write> x_211 : x_WaveformBuffer_origX0X_atomic;

fn main_1() {
  var u_xlatu0 : vec4<u32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var x_130 : f32;
  var x_142 : f32;
  var x_154 : f32;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec4<f32> = x_14.x_Params;
  let x_23 : vec2<u32> = vec2<u32>(vec2<f32>(x_20.x, x_20.y));
  let x_24 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_23.x, x_23.y, x_24.z, x_24.w);
  let x_33 : vec3<u32> = gl_GlobalInvocationID;
  let x_35 : vec4<u32> = u_xlatu0;
  let x_38 : vec4<bool> = (vec4<u32>(x_33.x, x_33.y, x_33.x, x_33.x) < vec4<u32>(x_35.x, x_35.y, x_35.x, x_35.x));
  u_xlatb0 = vec2<bool>(x_38.x, x_38.y);
  let x_43 : bool = u_xlatb0.y;
  let x_46 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_43 & x_46);
  let x_50 : bool = u_xlatb0.x;
  if (x_50) {
    let x_53 : vec3<u32> = gl_GlobalInvocationID;
    let x_54 : vec2<u32> = vec2<u32>(x_53.x, x_53.y);
    let x_55 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_54.x, x_54.y, x_55.z, x_55.w);
    u_xlatu0.z = 0u;
    u_xlatu0.w = 0u;
    let x_69 : vec4<u32> = u_xlatu0;
    let x_74 : u32 = u_xlatu0.w;
    let x_76 : vec4<f32> = textureLoad(x_Source, bitcast<vec2<i32>>(vec2<u32>(x_69.x, x_69.y)), bitcast<i32>(x_74));
    u_xlat0 = vec3<f32>(x_76.x, x_76.y, x_76.z);
    let x_78 : vec3<f32> = u_xlat0;
    u_xlat0 = x_78;
    let x_79 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_79, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_88 : f32 = x_14.x_Params.z;
    u_xlatb12 = (0.0f < x_88);
    let x_90 : bool = u_xlatb12;
    if (x_90) {
      let x_94 : vec3<f32> = u_xlat0;
      u_xlat1 = (x_94 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
      let x_99 : vec3<f32> = u_xlat0;
      u_xlat2 = max(x_99, vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
      let x_103 : vec3<f32> = u_xlat2;
      u_xlat2 = log2(x_103);
      let x_105 : vec3<f32> = u_xlat2;
      u_xlat2 = (x_105 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
      let x_109 : vec3<f32> = u_xlat2;
      u_xlat2 = exp2(x_109);
      let x_111 : vec3<f32> = u_xlat2;
      u_xlat2 = ((x_111 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
      let x_123 : vec3<f32> = u_xlat0;
      let x_125 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.x));
      u_xlatb3 = vec3<bool>(x_125.x, x_125.y, x_125.z);
      let x_128 : bool = u_xlatb3.x;
      if (x_128) {
        let x_134 : f32 = u_xlat1.x;
        x_130 = x_134;
      } else {
        let x_137 : f32 = u_xlat2.x;
        x_130 = x_137;
      }
      let x_138 : f32 = x_130;
      u_xlat0.x = x_138;
      let x_141 : bool = u_xlatb3.y;
      if (x_141) {
        let x_146 : f32 = u_xlat1.y;
        x_142 = x_146;
      } else {
        let x_149 : f32 = u_xlat2.y;
        x_142 = x_149;
      }
      let x_150 : f32 = x_142;
      u_xlat0.y = x_150;
      let x_153 : bool = u_xlatb3.z;
      if (x_153) {
        let x_158 : f32 = u_xlat1.z;
        x_154 = x_158;
      } else {
        let x_161 : f32 = u_xlat2.z;
        x_154 = x_161;
      }
      let x_162 : f32 = x_154;
      u_xlat0.z = x_162;
    }
    let x_166 : f32 = x_14.x_Params.y;
    u_xlat12 = (x_166 + -1.0f);
    let x_169 : f32 = u_xlat12;
    let x_171 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_169, x_169, x_169) * x_171);
    let x_173 : vec3<f32> = u_xlat0;
    u_xlat0 = round(x_173);
    let x_175 : vec3<f32> = u_xlat0;
    let x_176 : vec3<u32> = vec3<u32>(x_175);
    let x_177 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_181 : u32 = gl_GlobalInvocationID.x;
    u_xlat12 = f32(x_181);
    let x_183 : vec4<u32> = u_xlatu0;
    u_xlat0 = vec3<f32>(vec3<u32>(x_183.x, x_183.y, x_183.z));
    let x_186 : f32 = u_xlat12;
    let x_189 : vec4<f32> = x_14.x_Params;
    let x_192 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_189.y, x_189.y, x_189.y)) + x_192);
    let x_194 : vec3<f32> = u_xlat0;
    let x_196 : vec3<u32> = vec3<u32>(vec3<f32>(x_194.y, x_194.x, x_194.z));
    let x_197 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_200 : u32 = u_xlatu0.y;
    if ((x_200 != 0u)) {
      u_xlatu0.w = 0u;
      let x_213 : u32 = u_xlatu0.y;
      let x_215 : u32 = u_xlatu0.w;
      let x_219 : u32 = atomicAdd(&(x_211.x_WaveformBuffer_origX0X_buf[x_213].value[(x_215 >> 2u)]), 1u);
    }
    let x_221 : u32 = u_xlatu0.x;
    if ((x_221 != 0u)) {
      u_xlatu0.y = 4u;
      let x_227 : u32 = u_xlatu0.x;
      let x_229 : u32 = u_xlatu0.y;
      let x_232 : u32 = atomicAdd(&(x_211.x_WaveformBuffer_origX0X_buf[x_227].value[(x_229 >> 2u)]), 1u);
    }
    let x_234 : u32 = u_xlatu0.z;
    if ((x_234 != 0u)) {
      u_xlatu0.y = 8u;
      let x_241 : u32 = u_xlatu0.z;
      let x_243 : u32 = u_xlatu0.y;
      let x_246 : u32 = atomicAdd(&(x_211.x_WaveformBuffer_origX0X_buf[x_241].value[(x_243 >> 2u)]), 1u);
    }
  }
  return;
}

@compute @workgroup_size(1i, 256i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

