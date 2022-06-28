struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : f32 = x_50.x_PostExposure;
  let x_57 : f32 = x_50.x_PostExposure;
  let x_59 : f32 = x_50.x_PostExposure;
  let x_61 : f32 = x_50.x_PostExposure;
  let x_62 : vec4<f32> = vec4<f32>(x_55, x_57, x_59, x_61);
  u_xlat0 = (x_47 * vec4<f32>(x_62.x, x_62.y, x_62.z, x_62.w));
  let x_69 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((vec3<f32>(x_69.z, x_69.x, x_69.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_81 : vec3<f32> = log2(vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_91 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_94 : vec4<f32> = u_xlat1;
  let x_100 : vec3<f32> = clamp(vec3<f32>(x_94.x, x_94.y, x_94.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_105 : vec4<f32> = u_xlat1;
  let x_110 : vec3<f32> = x_50.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_110.z, x_110.z, x_110.z));
  let x_114 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_114);
  let x_119 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_123 : vec2<f32> = (vec2<f32>(x_119.x, x_119.y) * vec2<f32>(0.5f, 0.5f));
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_123.x, x_123.y, x_124.z);
  let x_126 : vec3<f32> = u_xlat6;
  let x_129 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_132 : vec3<f32> = u_xlat2;
  let x_134 : vec2<f32> = ((vec2<f32>(x_126.y, x_126.z) * vec2<f32>(x_129.x, x_129.y)) + vec2<f32>(x_132.x, x_132.y));
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_135.x, x_134.x, x_134.y);
  let x_138 : f32 = u_xlat6.x;
  let x_141 : f32 = x_50.x_Lut2D_Params.y;
  let x_144 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_138 * x_141) + x_144);
  let x_153 : vec3<f32> = u_xlat2;
  let x_155 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_153.x, x_153.z));
  u_xlat3 = vec3<f32>(x_155.x, x_155.y, x_155.z);
  let x_160 : f32 = x_50.x_Lut2D_Params.y;
  u_xlat4.x = x_160;
  u_xlat4.y = 0.0f;
  let x_164 : vec3<f32> = u_xlat2;
  let x_166 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_164.x, x_164.z) + x_166);
  let x_171 : vec2<f32> = u_xlat11;
  let x_172 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_171);
  u_xlat2 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  let x_175 : f32 = u_xlat1.x;
  let x_178 : f32 = x_50.x_Lut2D_Params.z;
  let x_181 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_175 * x_178) + -(x_181));
  let x_185 : vec3<f32> = u_xlat3;
  let x_187 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_185) + x_187);
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat6;
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.x, x_189.x) * x_191) + x_193);
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_202 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_202);
  let x_204 : bool = u_xlatb1;
  if (x_204) {
    let x_207 : vec4<f32> = u_xlat0;
    let x_208 : vec3<f32> = vec3<f32>(x_207.x, x_207.y, x_207.z);
    let x_209 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : vec4<f32> = u_xlat1;
    let x_215 : vec3<f32> = clamp(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_216 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_229 : vec4<f32> = u_xlat0;
  SV_Target0 = x_229;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

