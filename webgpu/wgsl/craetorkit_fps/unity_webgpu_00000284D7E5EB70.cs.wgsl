struct Params {
  x_Params : vec4<f32>,
}

type Arr = array<u32, 1u>;

struct x_VectorscopeBuffer_origX0X_type_atomic {
  value : array<atomic<u32>, 1u>,
}

struct x_VectorscopeBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_VectorscopeBuffer_origX0X_type>;

struct x_VectorscopeBuffer_origX0X_atomic {
  x_VectorscopeBuffer_origX0X_buf : array<x_VectorscopeBuffer_origX0X_type_atomic>,
}

struct x_VectorscopeBuffer_origX0X {
  x_VectorscopeBuffer_origX0X_buf : RTArr,
}

@group(1) @binding(0) var<uniform> x_14 : Params;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var x_Source : texture_2d<f32>;

@group(0) @binding(1) var<storage, read_write> x_252 : x_VectorscopeBuffer_origX0X_atomic;

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
  var u_xlat4 : f32;
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
    let x_88 : f32 = x_14.x_Params.w;
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
    let x_166 : f32 = u_xlat0.y;
    u_xlat12 = (x_166 * 0.331f);
    let x_170 : f32 = u_xlat0.x;
    let x_173 : f32 = u_xlat12;
    u_xlat12 = ((x_170 * -0.169f) + -(x_173));
    let x_177 : f32 = u_xlat0.z;
    let x_180 : f32 = u_xlat12;
    u_xlat1.y = ((x_177 * 0.5f) + x_180);
    let x_185 : f32 = u_xlat0.y;
    u_xlat4 = (x_185 * 0.419f);
    let x_189 : f32 = u_xlat0.x;
    let x_191 : f32 = u_xlat4;
    u_xlat0.x = ((x_189 * 0.5f) + -(x_191));
    let x_196 : f32 = u_xlat0.z;
    let x_201 : f32 = u_xlat0.x;
    u_xlat1.x = ((-(x_196) * 0.081f) + x_201);
    let x_204 : vec3<f32> = u_xlat1;
    let x_207 : vec2<f32> = (vec2<f32>(x_204.x, x_204.y) + vec2<f32>(0.5f, 0.5f));
    let x_208 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_207.x, x_207.y, x_208.z);
    let x_210 : vec3<f32> = u_xlat0;
    let x_213 : vec4<f32> = x_14.x_Params;
    let x_215 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_213.z, x_213.z));
    let x_216 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_215.x, x_215.y, x_216.z);
    let x_218 : vec3<f32> = u_xlat0;
    let x_220 : vec2<f32> = floor(vec2<f32>(x_218.x, x_218.y));
    let x_221 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_220.x, x_220.y, x_221.z);
    let x_223 : vec3<f32> = u_xlat0;
    let x_225 : vec2<u32> = vec2<u32>(vec2<f32>(x_223.x, x_223.y));
    let x_226 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_225.x, x_225.y, x_226.z, x_226.w);
    let x_228 : vec4<u32> = u_xlatu0;
    let x_230 : vec2<f32> = vec2<f32>(vec2<u32>(x_228.x, x_228.y));
    let x_231 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_230.x, x_230.y, x_231.z);
    let x_234 : f32 = u_xlat0.x;
    let x_236 : f32 = x_14.x_Params.z;
    let x_239 : f32 = u_xlat0.y;
    u_xlat0.x = ((x_234 * x_236) + x_239);
    let x_243 : f32 = u_xlat0.x;
    u_xlatu0.x = u32(x_243);
    u_xlatu0.y = 0u;
    let x_254 : u32 = u_xlatu0.x;
    let x_256 : u32 = u_xlatu0.y;
    let x_260 : u32 = atomicAdd(&(x_252.x_VectorscopeBuffer_origX0X_buf[x_254].value[(x_256 >> 2u)]), 1u);
  }
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

