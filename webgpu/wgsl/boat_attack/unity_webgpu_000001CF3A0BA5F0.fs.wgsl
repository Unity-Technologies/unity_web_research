diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat5 : f32;

var<private> u_xlat6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_Params.w;
  let x_23 : f32 = x_14.x_Params.w;
  u_xlat0.x = (x_21 + x_23);
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_44 : f32 = x_14.x_GlobalMipBias.x;
  let x_45 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_41, x_44);
  u_xlat2 = vec3<f32>(x_45.x, x_45.y, x_45.z);
  let x_47 : vec3<f32> = u_xlat2;
  let x_50 : vec4<f32> = x_14.x_Params;
  u_xlat2 = min(x_47, vec3<f32>(x_50.y, x_50.y, x_50.y));
  let x_56 : f32 = u_xlat2.y;
  let x_58 : f32 = u_xlat2.x;
  u_xlat1.x = max(x_56, x_58);
  let x_63 : f32 = u_xlat2.z;
  let x_65 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_63, x_65);
  let x_70 : f32 = u_xlat1.x;
  let x_72 : f32 = x_14.x_Params.z;
  u_xlat3 = (x_70 + -(x_72));
  let x_75 : f32 = u_xlat3;
  let x_77 : f32 = x_14.x_Params.w;
  u_xlat1.z = (x_75 + x_77);
  let x_80 : vec3<f32> = u_xlat1;
  let x_85 : vec2<f32> = max(vec2<f32>(x_80.x, x_80.z), vec2<f32>(0.00009999999747378752f, 0.0f));
  let x_86 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_85.x, x_86.y, x_85.y);
  let x_89 : f32 = u_xlat0.x;
  let x_91 : f32 = u_xlat1.z;
  u_xlat0.x = min(x_89, x_91);
  let x_95 : f32 = u_xlat0.x;
  let x_97 : f32 = u_xlat0.x;
  u_xlat0.x = (x_95 * x_97);
  let x_102 : f32 = x_14.x_Params.w;
  u_xlat5 = ((x_102 * 4.0f) + 0.00009999999747378752f);
  let x_107 : f32 = u_xlat0.x;
  let x_108 : f32 = u_xlat5;
  u_xlat0.x = (x_107 / x_108);
  let x_112 : f32 = u_xlat0.x;
  let x_113 : f32 = u_xlat3;
  u_xlat0.x = max(x_112, x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_119 : f32 = u_xlat1.x;
  u_xlat0.x = (x_117 / x_119);
  let x_122 : vec3<f32> = u_xlat0;
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_122.x, x_122.x, x_122.x) * x_124);
  let x_126 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_126, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_129 * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_135 : f32 = u_xlat0.y;
  let x_137 : f32 = u_xlat0.x;
  u_xlat6 = max(x_135, x_137);
  let x_140 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_140, 0.00000999999974737875f);
  let x_144 : f32 = u_xlat6;
  let x_146 : f32 = u_xlat1.x;
  u_xlat6 = max(x_144, x_146);
  let x_148 : f32 = u_xlat6;
  u_xlat6 = (x_148 * 255.0f);
  let x_151 : f32 = u_xlat6;
  u_xlat6 = ceil(x_151);
  let x_153 : f32 = u_xlat6;
  u_xlat6 = (x_153 * 0.0039215688593685627f);
  let x_158 : vec3<f32> = u_xlat0;
  let x_159 : f32 = u_xlat6;
  let x_161 : vec3<f32> = (x_158 / vec3<f32>(x_159, x_159, x_159));
  let x_162 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_164 : f32 = u_xlat6;
  SV_Target0.w = x_164;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


