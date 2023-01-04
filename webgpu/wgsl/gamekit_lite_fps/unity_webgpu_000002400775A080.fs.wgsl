struct PGlobals {
  x_Color : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DistortionBlend : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_GrabTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_GrabTexture : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_Color;
  u_xlat0 = (x_25 * x_33);
  let x_40 : vec4<f32> = vs_TEXCOORD4;
  let x_42 : vec4<f32> = vs_TEXCOORD4;
  let x_44 : vec2<f32> = (vec2<f32>(x_40.x, x_40.y) / vec2<f32>(x_42.w, x_42.w));
  let x_45 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_44.x, x_44.y, x_45.z);
  let x_52 : vec3<f32> = u_xlat1;
  let x_54 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, vec2<f32>(x_52.x, x_52.y));
  u_xlat1 = vec3<f32>(x_54.x, x_54.y, x_54.z);
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = vs_COLOR0;
  let x_62 : vec3<f32> = u_xlat1;
  let x_64 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_59.x, x_59.y, x_59.z)) + -(x_62));
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  let x_72 : f32 = u_xlat0.w;
  let x_75 : f32 = vs_COLOR0.w;
  u_xlat9 = (x_72 * x_75);
  let x_81 : f32 = vs_TEXCOORD3.z;
  let x_86 : f32 = x_28.x_CameraFadeParams.x;
  u_xlat10 = (x_81 + -(x_86));
  let x_89 : f32 = u_xlat10;
  let x_92 : f32 = x_28.x_CameraFadeParams.y;
  u_xlat10 = (x_89 * x_92);
  let x_94 : f32 = u_xlat10;
  u_xlat10 = clamp(x_94, 0.0f, 1.0f);
  let x_99 : f32 = u_xlat9;
  let x_100 : f32 = u_xlat10;
  let x_104 : f32 = x_28.x_DistortionBlend;
  u_xlat2 = ((x_99 * x_100) + -(x_104));
  let x_107 : f32 = u_xlat2;
  u_xlat2 = clamp(x_107, 0.0f, 1.0f);
  let x_109 : f32 = u_xlat9;
  let x_110 : f32 = u_xlat10;
  u_xlat9 = (x_109 * x_110);
  let x_114 : f32 = u_xlat9;
  SV_Target0.w = x_114;
  let x_117 : f32 = u_xlat2;
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : vec3<f32> = u_xlat1;
  let x_123 : vec3<f32> = ((vec3<f32>(x_117, x_117, x_117) * vec3<f32>(x_119.x, x_119.y, x_119.z)) + x_122);
  let x_124 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

