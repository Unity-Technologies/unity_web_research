struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex0_ST : vec4<f32>,
  x_MainTex1_ST : vec4<f32>,
  x_MainTex2_ST : vec4<f32>,
  x_MainTex3_ST : vec4<f32>,
  x_MainTex4_ST : vec4<f32>,
  x_MainTex5_ST : vec4<f32>,
  x_MainTex6_ST : vec4<f32>,
  x_MainTex7_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> in_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat1;
  gl_Position = ((x_72 * vec4<f32>(x_73.w, x_73.w, x_73.w, x_73.w)) + x_76);
  let x_88 : f32 = in_TEXCOORD0.z;
  u_xlatu0 = u32(x_88);
  let x_90 : u32 = u_xlatu0;
  switch(bitcast<i32>(x_90)) {
    case 7i: {
      let x_199 : vec3<f32> = in_TEXCOORD0;
      let x_203 : vec4<f32> = x_17.x_MainTex7_ST;
      let x_207 : vec4<f32> = x_17.x_MainTex7_ST;
      let x_209 : vec2<f32> = ((vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_203.x, x_203.y)) + vec2<f32>(x_207.z, x_207.w));
      let x_210 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
    }
    case 6i: {
      let x_185 : vec3<f32> = in_TEXCOORD0;
      let x_189 : vec4<f32> = x_17.x_MainTex6_ST;
      let x_193 : vec4<f32> = x_17.x_MainTex6_ST;
      let x_195 : vec2<f32> = ((vec2<f32>(x_185.x, x_185.y) * vec2<f32>(x_189.x, x_189.y)) + vec2<f32>(x_193.z, x_193.w));
      let x_196 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_196.z, x_196.w);
    }
    case 5i: {
      let x_171 : vec3<f32> = in_TEXCOORD0;
      let x_175 : vec4<f32> = x_17.x_MainTex5_ST;
      let x_179 : vec4<f32> = x_17.x_MainTex5_ST;
      let x_181 : vec2<f32> = ((vec2<f32>(x_171.x, x_171.y) * vec2<f32>(x_175.x, x_175.y)) + vec2<f32>(x_179.z, x_179.w));
      let x_182 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
    }
    case 4i: {
      let x_157 : vec3<f32> = in_TEXCOORD0;
      let x_161 : vec4<f32> = x_17.x_MainTex4_ST;
      let x_165 : vec4<f32> = x_17.x_MainTex4_ST;
      let x_167 : vec2<f32> = ((vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161.x, x_161.y)) + vec2<f32>(x_165.z, x_165.w));
      let x_168 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
    }
    case 3i: {
      let x_143 : vec3<f32> = in_TEXCOORD0;
      let x_147 : vec4<f32> = x_17.x_MainTex3_ST;
      let x_151 : vec4<f32> = x_17.x_MainTex3_ST;
      let x_153 : vec2<f32> = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
      let x_154 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_154.z, x_154.w);
    }
    case 2i: {
      let x_129 : vec3<f32> = in_TEXCOORD0;
      let x_133 : vec4<f32> = x_17.x_MainTex2_ST;
      let x_137 : vec4<f32> = x_17.x_MainTex2_ST;
      let x_139 : vec2<f32> = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_133.x, x_133.y)) + vec2<f32>(x_137.z, x_137.w));
      let x_140 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_140.z, x_140.w);
    }
    case 1i: {
      let x_116 : vec3<f32> = in_TEXCOORD0;
      let x_119 : vec4<f32> = x_17.x_MainTex1_ST;
      let x_123 : vec4<f32> = x_17.x_MainTex1_ST;
      let x_125 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_119.x, x_119.y)) + vec2<f32>(x_123.z, x_123.w));
      let x_126 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_126.w);
    }
    case 0i: {
      let x_103 : vec3<f32> = in_TEXCOORD0;
      let x_106 : vec4<f32> = x_17.x_MainTex0_ST;
      let x_110 : vec4<f32> = x_17.x_MainTex0_ST;
      let x_112 : vec2<f32> = ((vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y)) + vec2<f32>(x_110.z, x_110.w));
      let x_113 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
    }
    default: {
      u_xlat0.x = 0.0f;
      u_xlat0.y = 0.0f;
    }
  }
  let x_222 : vec4<f32> = u_xlat0;
  let x_223 : vec2<f32> = vec2<f32>(x_222.x, x_222.y);
  let x_224 : vec3<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_228 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_228;
  let x_230 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD0.z = x_230;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0);
}

