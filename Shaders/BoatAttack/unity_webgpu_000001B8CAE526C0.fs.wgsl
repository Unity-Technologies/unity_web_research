struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Metrics : vec4<f32>,
}

@group(0) @binding(1) var x_BlendTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var x_104 : vec2<f32>;
  var x_115 : vec2<f32>;
  var x_125 : f32;
  var x_136 : f32;
  var u_xlat6 : f32;
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
  u_xlatb1 = (x_73 < 0.00001f);
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
      let x_129 : f32 = u_xlat0.x;
      x_125 = x_129;
    } else {
      let x_132 : f32 = u_xlat0.y;
      x_125 = x_132;
    }
    let x_133 : f32 = x_125;
    u_xlat0.x = x_133;
    let x_135 : bool = u_xlatb1;
    if (x_135) {
      let x_141 : f32 = u_xlat0.z;
      x_136 = x_141;
    } else {
      let x_144 : f32 = u_xlat0.w;
      x_136 = x_144;
    }
    let x_145 : f32 = x_136;
    u_xlat0.y = x_145;
    let x_148 : vec4<f32> = u_xlat0;
    u_xlat6 = dot(vec2<f32>(x_148.x, x_148.y), vec2<f32>(1.0f, 1.0f));
    let x_152 : vec4<f32> = u_xlat0;
    let x_154 : f32 = u_xlat6;
    let x_156 : vec2<f32> = (vec2<f32>(x_152.x, x_152.y) / vec2<f32>(x_154, x_154));
    let x_157 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
    let x_162 : vec4<f32> = x_27.x_Metrics;
    u_xlat1 = (vec4<f32>(x_162.x, x_162.y, x_162.x, x_162.y) * vec4<f32>(1.0f, 1.0f, -1.0f, -1.0f));
    let x_167 : vec4<f32> = u_xlat2;
    let x_168 : vec4<f32> = u_xlat1;
    let x_170 : vec2<f32> = vs_TEXCOORD0;
    u_xlat1 = ((x_167 * x_168) + vec4<f32>(x_170.x, x_170.y, x_170.x, x_170.y));
    let x_176 : vec4<f32> = u_xlat1;
    let x_178 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_176.x, x_176.y), 0.0f);
    u_xlat2 = x_178;
    let x_182 : vec4<f32> = u_xlat1;
    let x_184 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_182.z, x_182.w), 0.0f);
    u_xlat1 = x_184;
    let x_185 : vec4<f32> = u_xlat0;
    let x_187 : vec4<f32> = u_xlat1;
    u_xlat1 = (vec4<f32>(x_185.y, x_185.y, x_185.y, x_185.y) * x_187);
    let x_189 : vec4<f32> = u_xlat0;
    let x_191 : vec4<f32> = u_xlat2;
    let x_193 : vec4<f32> = u_xlat1;
    SV_Target0 = ((vec4<f32>(x_189.x, x_189.x, x_189.x, x_189.x) * x_191) + x_193);
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

