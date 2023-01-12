struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_48 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : vec3<f32> = vs_TEXCOORD2;
  let x_34 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_32.x, x_32.y));
  u_xlat1 = x_34;
  let x_35 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_35) + x_37);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_41 : vec4<f32> = u_xlat1;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z) * x_41) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_48.x_Color;
  u_xlat0 = (x_45 * x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (vec4<f32>(x_55.w, x_55.x, x_55.y, x_55.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_70 : vec4<f32> = x_48.x_SoftParticleFadeParams;
  let x_73 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.x));
  u_xlatb1 = vec2<bool>(x_73.x, x_73.y);
  let x_79 : bool = u_xlatb1.y;
  let x_82 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_79 | x_82);
  let x_86 : bool = u_xlatb1.x;
  if (x_86) {
    let x_90 : vec4<f32> = vs_TEXCOORD3;
    let x_92 : vec4<f32> = vs_TEXCOORD3;
    let x_94 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) / vec2<f32>(x_92.w, x_92.w));
    let x_95 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_95.z, x_95.w);
    let x_102 : vec4<f32> = u_xlat1;
    let x_104 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_102.x, x_102.y));
    u_xlat1.x = x_104.x;
    let x_112 : f32 = x_48.x_ZBufferParams.z;
    let x_114 : f32 = u_xlat1.x;
    let x_118 : f32 = x_48.x_ZBufferParams.w;
    u_xlat1.x = ((x_112 * x_114) + x_118);
    let x_123 : f32 = u_xlat1.x;
    u_xlat1.x = (1.0f / x_123);
    let x_127 : f32 = u_xlat1.x;
    let x_129 : f32 = x_48.x_SoftParticleFadeParams.x;
    u_xlat1.x = (x_127 + -(x_129));
    let x_134 : f32 = u_xlat1.x;
    let x_137 : f32 = vs_TEXCOORD3.z;
    u_xlat1.x = (x_134 + -(x_137));
    let x_142 : f32 = u_xlat1.x;
    let x_144 : f32 = x_48.x_SoftParticleFadeParams.y;
    u_xlat1.x = (x_142 * x_144);
    let x_148 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_148, 0.0f, 1.0f);
    let x_152 : f32 = u_xlat0.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat0.x = (x_152 * x_154);
  }
  let x_158 : f32 = vs_TEXCOORD3.z;
  let x_161 : f32 = x_48.x_CameraFadeParams.x;
  u_xlat1.x = (x_158 + -(x_161));
  let x_166 : f32 = u_xlat1.x;
  let x_168 : f32 = x_48.x_CameraFadeParams.y;
  u_xlat1.x = (x_166 * x_168);
  let x_172 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_172, 0.0f, 1.0f);
  let x_178 : f32 = u_xlat0.x;
  let x_180 : f32 = u_xlat1.x;
  SV_Target0.w = (x_178 * x_180);
  let x_184 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = vec3<f32>(x_184.y, x_184.z, x_184.w);
  let x_186 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

