struct name {
  /* @offset(0) */
  x_Params : vec4<f32>,
}

alias Arr = array<u32, 4u>;

struct x_WaveformBuffer_origX0X_type_atomic {
  /* @offset(0) */
  value : array<atomic<u32>, 4u>,
}

struct x_WaveformBuffer_origX0X_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<x_WaveformBuffer_origX0X_type>;

struct x_WaveformBuffer_origX0X_atomic {
  /* @offset(0) */
  x_WaveformBuffer_origX0X_buf : array<x_WaveformBuffer_origX0X_type_atomic>,
}

struct x_WaveformBuffer_origX0X {
  /* @offset(0) */
  x_WaveformBuffer_origX0X_buf : RTArr,
}

var<private> u_xlatu0 : vec4<u32>;

@group(1) @binding(0) var<uniform> x_14 : name;

var<private> u_xlatb0 : vec2<bool>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_Source : texture_2d<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var<storage, read_write> x_212 : x_WaveformBuffer_origX0X_atomic;

fn main_1() {
  var x_130 : f32;
  var x_143 : f32;
  var x_155 : f32;
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
      u_xlat1 = (x_94 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
      let x_99 : vec3<f32> = u_xlat0;
      u_xlat2 = max(x_99, vec3<f32>(0.00000011920928955078f, 0.00000011920928955078f, 0.00000011920928955078f));
      let x_103 : vec3<f32> = u_xlat2;
      u_xlat2 = log2(x_103);
      let x_105 : vec3<f32> = u_xlat2;
      u_xlat2 = (x_105 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
      let x_109 : vec3<f32> = u_xlat2;
      u_xlat2 = exp2(x_109);
      let x_111 : vec3<f32> = u_xlat2;
      u_xlat2 = ((x_111 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
      let x_123 : vec3<f32> = u_xlat0;
      let x_125 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.x));
      u_xlatb3 = vec3<bool>(x_125.x, x_125.y, x_125.z);
      let x_128 : bool = u_xlatb3.x;
      if (x_128) {
        let x_135 : f32 = u_xlat1.x;
        x_130 = x_135;
      } else {
        let x_138 : f32 = u_xlat2.x;
        x_130 = x_138;
      }
      let x_139 : f32 = x_130;
      u_xlat0.x = x_139;
      let x_142 : bool = u_xlatb3.y;
      if (x_142) {
        let x_147 : f32 = u_xlat1.y;
        x_143 = x_147;
      } else {
        let x_150 : f32 = u_xlat2.y;
        x_143 = x_150;
      }
      let x_151 : f32 = x_143;
      u_xlat0.y = x_151;
      let x_154 : bool = u_xlatb3.z;
      if (x_154) {
        let x_159 : f32 = u_xlat1.z;
        x_155 = x_159;
      } else {
        let x_162 : f32 = u_xlat2.z;
        x_155 = x_162;
      }
      let x_163 : f32 = x_155;
      u_xlat0.z = x_163;
    }
    let x_167 : f32 = x_14.x_Params.w;
    u_xlat12 = (x_167 + -1.0f);
    let x_170 : f32 = u_xlat12;
    let x_172 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_170, x_170, x_170) * x_172);
    let x_174 : vec3<f32> = u_xlat0;
    u_xlat0 = round(x_174);
    let x_176 : vec3<f32> = u_xlat0;
    let x_177 : vec3<u32> = vec3<u32>(x_176);
    let x_178 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_182 : u32 = gl_GlobalInvocationID.x;
    u_xlat12 = f32(x_182);
    let x_184 : vec4<u32> = u_xlatu0;
    u_xlat0 = vec3<f32>(vec3<u32>(x_184.x, x_184.y, x_184.z));
    let x_187 : f32 = u_xlat12;
    let x_190 : vec4<f32> = x_14.x_Params;
    let x_193 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_190.w, x_190.w, x_190.w)) + x_193);
    let x_195 : vec3<f32> = u_xlat0;
    let x_197 : vec3<u32> = vec3<u32>(vec3<f32>(x_195.y, x_195.x, x_195.z));
    let x_198 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_201 : u32 = u_xlatu0.y;
    if ((x_201 != 0u)) {
      u_xlatu0.w = 0u;
      let x_214 : u32 = u_xlatu0.y;
      let x_216 : u32 = u_xlatu0.w;
      let x_220 : u32 = atomicAdd(&(x_212.x_WaveformBuffer_origX0X_buf[x_214].value[(x_216 >> 2u)]), 1u);
    }
    let x_222 : u32 = u_xlatu0.x;
    if ((x_222 != 0u)) {
      u_xlatu0.y = 4u;
      let x_228 : u32 = u_xlatu0.x;
      let x_230 : u32 = u_xlatu0.y;
      let x_233 : u32 = atomicAdd(&(x_212.x_WaveformBuffer_origX0X_buf[x_228].value[(x_230 >> 2u)]), 1u);
    }
    let x_235 : u32 = u_xlatu0.z;
    if ((x_235 != 0u)) {
      u_xlatu0.y = 8u;
      let x_242 : u32 = u_xlatu0.z;
      let x_244 : u32 = u_xlatu0.y;
      let x_247 : u32 = atomicAdd(&(x_212.x_WaveformBuffer_origX0X_buf[x_242].value[(x_244 >> 2u)]), 1u);
    }
  }
  return;
}

@compute @workgroup_size(1i, 256i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

