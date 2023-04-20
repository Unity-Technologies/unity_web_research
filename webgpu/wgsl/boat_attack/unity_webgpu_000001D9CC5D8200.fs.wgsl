diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Metrics : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BlendTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_104 : vec2<f32>;
  var x_115 : vec2<f32>;
  var x_126 : f32;
  var x_137 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlendTexture, sampler_LinearClamp, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0.x = x_35.w;
  let x_43 : vec4<f32> = vs_TEXCOORD1;
  let x_46 : f32 = x_27.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_BlendTexture, sampler_LinearClamp, vec2<f32>(x_43.z, x_43.w), x_46);
  u_xlat0.y = x_47.y;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_58 : f32 = x_27.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(x_BlendTexture, sampler_LinearClamp, x_56, x_58);
  let x_60 : vec2<f32> = vec2<f32>(x_59.z, x_59.x);
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_60.x, x_60.y);
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_64, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_73 : f32 = u_xlat1.x;
  u_xlatb1 = (x_73 < 0.00000999999974737875f);
  let x_76 : bool = u_xlatb1;
  if (x_76) {
    let x_85 : vec2<f32> = vs_TEXCOORD0;
    let x_87 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_85, 0.0f);
    SV_Target0 = x_87;
  } else {
    let x_89 : vec4<f32> = u_xlat0;
    let x_91 : vec4<f32> = u_xlat0;
    let x_93 : vec2<f32> = max(vec2<f32>(x_89.z, x_89.w), vec2<f32>(x_91.x, x_91.y));
    let x_94 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
    let x_97 : f32 = u_xlat1.y;
    let x_99 : f32 = u_xlat1.x;
    u_xlatb1 = (x_97 < x_99);
    let x_102 : bool = u_xlatb1;
    if (x_102) {
      let x_107 : vec4<f32> = u_xlat0;
      x_104 = vec2<f32>(x_107.x, x_107.z);
    } else {
      x_104 = vec2<f32>(0.0f, 0.0f);
    }
    let x_111 : vec2<f32> = x_104;
    let x_112 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_111.x, x_112.y, x_111.y, x_112.w);
    let x_114 : bool = u_xlatb1;
    if (x_114) {
      x_115 = vec2<f32>(0.0f, 0.0f);
    } else {
      let x_119 : vec4<f32> = u_xlat0;
      x_115 = vec2<f32>(x_119.y, x_119.w);
    }
    let x_121 : vec2<f32> = x_115;
    let x_122 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_122.x, x_121.x, x_122.z, x_121.y);
    let x_124 : bool = u_xlatb1;
    if (x_124) {
      let x_130 : f32 = u_xlat0.x;
      x_126 = x_130;
    } else {
      let x_133 : f32 = u_xlat0.y;
      x_126 = x_133;
    }
    let x_134 : f32 = x_126;
    u_xlat0.x = x_134;
    let x_136 : bool = u_xlatb1;
    if (x_136) {
      let x_142 : f32 = u_xlat0.z;
      x_137 = x_142;
    } else {
      let x_145 : f32 = u_xlat0.w;
      x_137 = x_145;
    }
    let x_146 : f32 = x_137;
    u_xlat0.y = x_146;
    let x_149 : vec4<f32> = u_xlat0;
    u_xlat6 = dot(vec2<f32>(x_149.x, x_149.y), vec2<f32>(1.0f, 1.0f));
    let x_153 : vec4<f32> = u_xlat0;
    let x_155 : f32 = u_xlat6;
    let x_157 : vec2<f32> = (vec2<f32>(x_153.x, x_153.y) / vec2<f32>(x_155, x_155));
    let x_158 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_158.z, x_158.w);
    let x_163 : vec4<f32> = x_27.x_Metrics;
    u_xlat1 = (vec4<f32>(x_163.x, x_163.y, x_163.x, x_163.y) * vec4<f32>(1.0f, 1.0f, -1.0f, -1.0f));
    let x_168 : vec4<f32> = u_xlat2;
    let x_169 : vec4<f32> = u_xlat1;
    let x_171 : vec2<f32> = vs_TEXCOORD0;
    u_xlat1 = ((x_168 * x_169) + vec4<f32>(x_171.x, x_171.y, x_171.x, x_171.y));
    let x_177 : vec4<f32> = u_xlat1;
    let x_179 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_177.x, x_177.y), 0.0f);
    u_xlat2 = x_179;
    let x_183 : vec4<f32> = u_xlat1;
    let x_185 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_183.z, x_183.w), 0.0f);
    u_xlat1 = x_185;
    let x_186 : vec4<f32> = u_xlat0;
    let x_188 : vec4<f32> = u_xlat1;
    u_xlat1 = (vec4<f32>(x_186.y, x_186.y, x_186.y, x_186.y) * x_188);
    let x_190 : vec4<f32> = u_xlat0;
    let x_192 : vec4<f32> = u_xlat2;
    let x_194 : vec4<f32> = u_xlat1;
    SV_Target0 = ((vec4<f32>(x_190.x, x_190.x, x_190.x, x_190.x) * x_192) + x_194);
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


